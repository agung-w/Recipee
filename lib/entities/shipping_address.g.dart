// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_address.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ShippingAddressCWProxy {
  ShippingAddress recipientName(String recipientName);

  ShippingAddress recipientContact(String? recipientContact);

  ShippingAddress address(String? address);

  ShippingAddress latLng(LatLng? latLng);

  ShippingAddress addressNotes(String? addressNotes);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ShippingAddress(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ShippingAddress(...).copyWith(id: 12, name: "My name")
  /// ````
  ShippingAddress call({
    String? recipientName,
    String? recipientContact,
    String? address,
    LatLng? latLng,
    String? addressNotes,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfShippingAddress.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfShippingAddress.copyWith.fieldName(...)`
class _$ShippingAddressCWProxyImpl implements _$ShippingAddressCWProxy {
  const _$ShippingAddressCWProxyImpl(this._value);

  final ShippingAddress _value;

  @override
  ShippingAddress recipientName(String recipientName) =>
      this(recipientName: recipientName);

  @override
  ShippingAddress recipientContact(String? recipientContact) =>
      this(recipientContact: recipientContact);

  @override
  ShippingAddress address(String? address) => this(address: address);

  @override
  ShippingAddress latLng(LatLng? latLng) => this(latLng: latLng);

  @override
  ShippingAddress addressNotes(String? addressNotes) =>
      this(addressNotes: addressNotes);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ShippingAddress(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ShippingAddress(...).copyWith(id: 12, name: "My name")
  /// ````
  ShippingAddress call({
    Object? recipientName = const $CopyWithPlaceholder(),
    Object? recipientContact = const $CopyWithPlaceholder(),
    Object? address = const $CopyWithPlaceholder(),
    Object? latLng = const $CopyWithPlaceholder(),
    Object? addressNotes = const $CopyWithPlaceholder(),
  }) {
    return ShippingAddress(
      recipientName:
          recipientName == const $CopyWithPlaceholder() || recipientName == null
              ? _value.recipientName
              // ignore: cast_nullable_to_non_nullable
              : recipientName as String,
      recipientContact: recipientContact == const $CopyWithPlaceholder()
          ? _value.recipientContact
          // ignore: cast_nullable_to_non_nullable
          : recipientContact as String?,
      address: address == const $CopyWithPlaceholder()
          ? _value.address
          // ignore: cast_nullable_to_non_nullable
          : address as String?,
      latLng: latLng == const $CopyWithPlaceholder()
          ? _value.latLng
          // ignore: cast_nullable_to_non_nullable
          : latLng as LatLng?,
      addressNotes: addressNotes == const $CopyWithPlaceholder()
          ? _value.addressNotes
          // ignore: cast_nullable_to_non_nullable
          : addressNotes as String?,
    );
  }
}

extension $ShippingAddressCopyWith on ShippingAddress {
  /// Returns a callable class that can be used as follows: `instanceOfShippingAddress.copyWith(...)` or like so:`instanceOfShippingAddress.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ShippingAddressCWProxy get copyWith => _$ShippingAddressCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingAddress _$ShippingAddressFromJson(Map<String, dynamic> json) =>
    ShippingAddress(
      recipientName: json['recipientName'] as String,
      recipientContact: json['recipientContact'] as String?,
      address: json['address'] as String?,
      latLng: json['latLng'] == null
          ? null
          : LatLng.fromJson(json['latLng'] as Map<String, dynamic>),
      addressNotes: json['addressNotes'] as String?,
    );

Map<String, dynamic> _$ShippingAddressToJson(ShippingAddress instance) =>
    <String, dynamic>{
      'recipientName': instance.recipientName,
      'recipientContact': instance.recipientContact,
      'address': instance.address,
      'latLng': instance.latLng,
      'addressNotes': instance.addressNotes,
    };
