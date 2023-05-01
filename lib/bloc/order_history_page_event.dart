part of 'order_history_page_bloc.dart';

@freezed
class OrderHistoryPageEvent with _$OrderHistoryPageEvent {
  const factory OrderHistoryPageEvent.getOrderHistory({required String token}) =
      _GetOrderHistory;
  const factory OrderHistoryPageEvent.cancelOrder(
      {required String id,
      required String token,
      required BuildContext context}) = _CancelOrder;
  const factory OrderHistoryPageEvent.updateOrderStatus(
      {required String id,
      required String status,
      required String token}) = _UpdateOrderStatus;
  const factory OrderHistoryPageEvent.addOrder(
      {required Order order, required String token}) = _AddOrder;
}
