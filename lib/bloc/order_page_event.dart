part of 'order_page_bloc.dart';

@freezed
class OrderPageEvent with _$OrderPageEvent {
  const factory OrderPageEvent.started(
      {required int id, required SignedIn authState}) = _Started;
  const factory OrderPageEvent.setBundleQuantity(
      {required OrderRecipeBundle bundle,
      required int quantity}) = _SetBundleQuantity;
  const factory OrderPageEvent.addBundleQuantity(
      {required OrderRecipeBundle bundle}) = _AddBundleQuantity;
  const factory OrderPageEvent.substractBundleQuantity(
      {required OrderRecipeBundle bundle}) = _SubstractBundleQuantity;
  const factory OrderPageEvent.changeShippingFee(
      {required double fee,
      required ShippingAddress? address}) = _ChangeShippingFee;
  const factory OrderPageEvent.calculateTotal() = _CalculateTotal;
  const factory OrderPageEvent.createOrder(
      {required SignedIn authState,
      required BuildContext context,
      required int recipeId}) = _CreateOrder;
}
