part of 'order_history_page_bloc.dart';

@freezed
class OrderHistoryPageState with _$OrderHistoryPageState {
  const factory OrderHistoryPageState.initial() = _Initial;
  const factory OrderHistoryPageState.loaded(
      {required List<Order> orderHistoryList}) = _Loaded;
  const factory OrderHistoryPageState.failed({String? message}) = _Failed;
}
