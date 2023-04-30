import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'shipping_address.g.dart';

@JsonSerializable()
@CopyWith()
class ShippingAddress {
  final String recipientName;
  final String? recipientContact;
  final String? address;
  final LatLng? latLng;
  final String? addressNotes;
  const ShippingAddress({
    required this.recipientName,
    this.recipientContact,
    this.address,
    this.latLng,
    this.addressNotes,
  });

  factory ShippingAddress.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingAddressToJson(this);
}
