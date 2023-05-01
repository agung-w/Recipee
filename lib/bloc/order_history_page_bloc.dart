import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ta_recipe_app/entities/order.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/order_services.dart';

part 'order_history_page_event.dart';
part 'order_history_page_state.dart';
part 'order_history_page_bloc.freezed.dart';

class OrderHistoryPageBloc
    extends Bloc<OrderHistoryPageEvent, OrderHistoryPageState> {
  OrderHistoryPageBloc() : super(const _Initial()) {
    on<_GetOrderHistory>((event, emit) async {
      emit(const _Initial());
      ApiResult<List<Order>> result =
          await OrderServices().getOrderHistoryList(token: event.token);
      result.map(success: (value) {
        emit(_Loaded(orderHistoryList: value.value));
      }, failed: (value) {
        emit(_Failed(message: value.message));
      });
    });
    on<_UpdateOrderStatus>((event, emit) async {
      if (state is _Loaded) {
        var currentState = (state as _Loaded);
        emit(const _Initial());
        List<Order> list = List.from(currentState.orderHistoryList);
        int i = list.indexWhere((element) => element.id == event.id);
        list[i] = list[i].copyWith(status: event.status);
        emit(currentState.copyWith(orderHistoryList: list));
      } else {
        emit(const _Initial());
        add(_GetOrderHistory(token: event.token));
      }
    });
    on<_CancelOrder>((event, emit) async {
      ApiResult<String> result =
          await OrderServices().cancelOrder(token: event.token, id: event.id);
      result.map(success: (value) {
        add(_UpdateOrderStatus(
            token: event.token, id: event.id, status: "cancel"));
        ScaffoldMessenger.of(event.context).showSnackBar(
            SnackBar(content: const Text("order_cancel_success_text").tr()));
      }, failed: (value) {
        ScaffoldMessenger.of(event.context)
            .showSnackBar(SnackBar(content: Text(value.message)));
      });
    });
    on<_AddOrder>((event, emit) async {
      if (state is _Loaded) {
        var currentState = (state as _Loaded);
        emit(const _Initial());
        List<Order> list = List.from(currentState.orderHistoryList);
        list.insert(0, event.order);
        emit(currentState.copyWith(orderHistoryList: list));
      } else {
        emit(const _Initial());
        add(_GetOrderHistory(token: event.token));
      }
    });
  }
}
