import 'package:json_annotation/json_annotation.dart';

part 'shipping_fee.g.dart';

@JsonSerializable()
class ShippingFee {
  final String distance;
  @JsonKey(name: 'shipping_fee')
  final double fee;
  const ShippingFee({
    required this.distance,
    required this.fee,
  });

  factory ShippingFee.fromJson(Map<String, dynamic> json) =>
      _$ShippingFeeFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingFeeToJson(this);
}
