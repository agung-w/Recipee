part of 'shipping_cubit.dart';

@freezed
class ShippingState with _$ShippingState {
  const factory ShippingState.loading() = _Loading;
  const factory ShippingState.loaded(
      {required ShippingAddress shippingAddress,
      required ApiResult<ShippingFee> shippingFee}) = _Loaded;
}
