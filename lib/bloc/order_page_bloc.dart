import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ta_recipe_app/bloc/order_history_page_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/entities/order.dart';
import 'package:ta_recipe_app/entities/order_recipe_bundle.dart';
import 'package:ta_recipe_app/entities/recipe_bundle.dart';
import 'package:ta_recipe_app/entities/shipping_address.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/order_services.dart';
import 'package:ta_recipe_app/services/recipe_services.dart';
import 'package:ta_recipe_app/ui/pages/payment_page.dart';

part 'order_page_event.dart';
part 'order_page_state.dart';
part 'order_page_bloc.freezed.dart';

class OrderPageBloc extends Bloc<OrderPageEvent, OrderPageState> {
  OrderPageBloc() : super(const _Initial()) {
    on<_Started>((event, emit) async {
      ApiResult<List<RecipeBundle>?> bundles = await RecipeServices()
          .getBundles(recipeId: event.id, token: event.authState.token);
      bundles.map(
          success: (value) {
            if (value.value != null && value.value!.isNotEmpty) {
              if (state is _Loaded) {
                var orderState = (state as _Loaded);
                emit(orderState.copyWith(
                    bundles: value.value!
                        .map((e) => OrderRecipeBundle.fromJson(e.toJson()))
                        .toList()));
              } else {
                emit(_Loaded(
                    bundles: value.value!
                        .map((e) => OrderRecipeBundle.fromJson(e.toJson()))
                        .toList()));
              }
            } else {
              emit(_Failed(message: "no_bundles_available".tr()));
            }
          },
          failed: (value) => emit(_Failed(message: value.message)));
    });
    on<_SetBundleQuantity>(((event, emit) {
      if (state is _Loaded) {
        var orderState = (state as _Loaded);
        int newQty = event.quantity < 0
            ? 0
            : event.quantity <= event.bundle.stock!
                ? event.quantity
                : event.bundle.stock!;
        List<OrderRecipeBundle> bundles = List.from(orderState.bundles);
        int i = bundles.indexWhere((element) => element == event.bundle);
        bundles[i] = bundles[i].copyWith(
            quantity: newQty, totalPrice: newQty * event.bundle.price!);
        emit(orderState.copyWith(bundles: bundles));
      }
    }));
    on<_AddBundleQuantity>(((event, emit) {
      if (state is _Loaded) {
        var orderState = (state as _Loaded);
        int newQty = event.bundle.quantity += 1;
        List<OrderRecipeBundle> bundles = List.from(orderState.bundles);
        int i = bundles.indexWhere((element) => element == event.bundle);
        bundles[i] = bundles[i].copyWith(
            quantity: newQty, totalPrice: newQty * event.bundle.price!);
        emit(orderState.copyWith(bundles: bundles));
      }
    }));
    on<_SubstractBundleQuantity>(((event, emit) {
      if (state is _Loaded) {
        var orderState = (state as _Loaded);
        int newQty = event.bundle.quantity -= 1;
        List<OrderRecipeBundle> bundles = List.from(orderState.bundles);
        int i = bundles.indexWhere((element) => element == event.bundle);
        bundles[i] = bundles[i].copyWith(
            quantity: newQty, totalPrice: newQty * event.bundle.price!);
        emit(orderState.copyWith(bundles: bundles));
      }
    }));
    on<_ChangeShippingFee>(((event, emit) {
      String? addressError;
      if (event.address == null ||
          event.address?.address?.isEmpty == true ||
          event.address?.latLng == null ||
          event.address?.recipientContact?.isEmpty == true) {
        addressError = "please_complete_address_text".tr();
      }
      if (state is _Loaded) {
        var orderState = (state as _Loaded);
        emit(orderState.copyWith(
            shippingFee: event.fee,
            addressError: addressError,
            shippingAddress: event.address));
      } else {
        emit(_Loaded(
            bundles: [], shippingFee: event.fee, addressError: addressError));
      }
    }));
    on<_CalculateTotal>(((event, emit) {
      if (state is _Loaded) {
        var orderState = (state as _Loaded);
        double totalBundle = 0;
        double itemCount = 0;
        for (var element in orderState.bundles) {
          totalBundle += element.totalPrice;
          itemCount += element.quantity;
        }
        double shippingFee = orderState.shippingFee ?? 0;
        if (itemCount > 0 && shippingFee != 0) {
          emit(orderState.copyWith(orderTotal: totalBundle + shippingFee));
        } else {
          emit(orderState.copyWith(orderTotal: null));
        }
      }
    }));
    on<_CreateOrder>(((event, emit) async {
      if (state is _Loaded) {
        var orderState = (state as _Loaded);
        ApiResult<Order> createOrder = await OrderServices().createOrder(
            shippingAddress: orderState.shippingAddress!,
            shippingfee: orderState.shippingFee!,
            bundles: orderState.bundles,
            token: event.authState.token);
        createOrder.map(success: (value) {
          Navigator.of(event.context).push(MaterialPageRoute(
              builder: (_) =>
                  PaymentPage(order: value.value, authState: event.authState)));
          event.context.read<OrderHistoryPageBloc>().add(
              OrderHistoryPageEvent.addOrder(
                  order: value.value, token: event.authState.token));
          emit(const _Initial());
        }, failed: (value) {
          ScaffoldMessenger.of(event.context)
              .showSnackBar(SnackBar(content: Text(value.message)));
          add(_Started(id: event.recipeId, authState: event.authState));
        });
      }
    }));
  }
}
