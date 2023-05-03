import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ta_recipe_app/bloc/order_history_page_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/entities/order.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/order_services.dart';

part 'payment_state.dart';
part 'payment_cubit.freezed.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(const PaymentState.initial());
  Future<void> checkPaymentStatus(
      {required String id,
      required BuildContext context,
      required SignedIn authState}) async {
    ApiResult<Order> result = await OrderServices()
        .checkPaymentStatus(token: authState.token, id: id);
    result.map(success: (value) {
      if (value.value.status == "paid") {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: const Text("payment_success_text").tr()));
        Navigator.of(context).popUntil((route) => route.isFirst);
        context.read<OrderHistoryPageBloc>().add(
            OrderHistoryPageEvent.updateOrderStatus(
                id: value.value.id,
                status: value.value.status,
                token: authState.token));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: const Text("please_complete_payment_text").tr()));
        Navigator.of(context).popUntil((route) => route.isFirst);
      }
    }, failed: (value) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(value.message)));
      Navigator.of(context).popUntil((route) => route.isFirst);
    });
  }
}
