part of 'order_page_bloc.dart';

@freezed
class OrderPageState with _$OrderPageState {
  const factory OrderPageState.initial() = _Initial;
  const factory OrderPageState.loaded({
    required List<OrderRecipeBundle> bundles,
    double? orderTotal,
    double? shippingFee,
    String? addressError,
    ShippingAddress? shippingAddress,
  }) = _Loaded;
  const factory OrderPageState.failed({required String message}) = _Failed;
}
