// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_fee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingFee _$ShippingFeeFromJson(Map<String, dynamic> json) => ShippingFee(
      distance: json['distance'] as String,
      fee: (json['shipping_fee'] as num).toDouble(),
    );

Map<String, dynamic> _$ShippingFeeToJson(ShippingFee instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'shipping_fee': instance.fee,
    };
