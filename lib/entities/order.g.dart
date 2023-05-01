// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderCWProxy {
  Order id(String id);

  Order status(String status);

  Order recipientContact(String recipientContact);

  Order total(double total);

  Order shippingAddress(String shippingAddress);

  Order orderTime(String orderTime);

  Order addressNotes(String? addressNotes);

  Order recipientName(String recipientName);

  Order orderItems(List<OrderItem> orderItems);

  Order paymentLink(String? paymentLink);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Order(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Order(...).copyWith(id: 12, name: "My name")
  /// ````
  Order call({
    String? id,
    String? status,
    String? recipientContact,
    double? total,
    String? shippingAddress,
    String? orderTime,
    String? addressNotes,
    String? recipientName,
    List<OrderItem>? orderItems,
    String? paymentLink,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOrder.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOrder.copyWith.fieldName(...)`
class _$OrderCWProxyImpl implements _$OrderCWProxy {
  const _$OrderCWProxyImpl(this._value);

  final Order _value;

  @override
  Order id(String id) => this(id: id);

  @override
  Order status(String status) => this(status: status);

  @override
  Order recipientContact(String recipientContact) =>
      this(recipientContact: recipientContact);

  @override
  Order total(double total) => this(total: total);

  @override
  Order shippingAddress(String shippingAddress) =>
      this(shippingAddress: shippingAddress);

  @override
  Order orderTime(String orderTime) => this(orderTime: orderTime);

  @override
  Order addressNotes(String? addressNotes) => this(addressNotes: addressNotes);

  @override
  Order recipientName(String recipientName) =>
      this(recipientName: recipientName);

  @override
  Order orderItems(List<OrderItem> orderItems) => this(orderItems: orderItems);

  @override
  Order paymentLink(String? paymentLink) => this(paymentLink: paymentLink);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Order(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Order(...).copyWith(id: 12, name: "My name")
  /// ````
  Order call({
    Object? id = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? recipientContact = const $CopyWithPlaceholder(),
    Object? total = const $CopyWithPlaceholder(),
    Object? shippingAddress = const $CopyWithPlaceholder(),
    Object? orderTime = const $CopyWithPlaceholder(),
    Object? addressNotes = const $CopyWithPlaceholder(),
    Object? recipientName = const $CopyWithPlaceholder(),
    Object? orderItems = const $CopyWithPlaceholder(),
    Object? paymentLink = const $CopyWithPlaceholder(),
  }) {
    return Order(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as String,
      recipientContact: recipientContact == const $CopyWithPlaceholder() ||
              recipientContact == null
          ? _value.recipientContact
          // ignore: cast_nullable_to_non_nullable
          : recipientContact as String,
      total: total == const $CopyWithPlaceholder() || total == null
          ? _value.total
          // ignore: cast_nullable_to_non_nullable
          : total as double,
      shippingAddress: shippingAddress == const $CopyWithPlaceholder() ||
              shippingAddress == null
          ? _value.shippingAddress
          // ignore: cast_nullable_to_non_nullable
          : shippingAddress as String,
      orderTime: orderTime == const $CopyWithPlaceholder() || orderTime == null
          ? _value.orderTime
          // ignore: cast_nullable_to_non_nullable
          : orderTime as String,
      addressNotes: addressNotes == const $CopyWithPlaceholder()
          ? _value.addressNotes
          // ignore: cast_nullable_to_non_nullable
          : addressNotes as String?,
      recipientName:
          recipientName == const $CopyWithPlaceholder() || recipientName == null
              ? _value.recipientName
              // ignore: cast_nullable_to_non_nullable
              : recipientName as String,
      orderItems:
          orderItems == const $CopyWithPlaceholder() || orderItems == null
              ? _value.orderItems
              // ignore: cast_nullable_to_non_nullable
              : orderItems as List<OrderItem>,
      paymentLink: paymentLink == const $CopyWithPlaceholder()
          ? _value.paymentLink
          // ignore: cast_nullable_to_non_nullable
          : paymentLink as String?,
    );
  }
}

extension $OrderCopyWith on Order {
  /// Returns a callable class that can be used as follows: `instanceOfOrder.copyWith(...)` or like so:`instanceOfOrder.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderCWProxy get copyWith => _$OrderCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: json['id'] as String,
      status: json['status'] as String,
      recipientContact: json['recipient_contact'] as String,
      total: (json['total'] as num).toDouble(),
      shippingAddress: json['shipping_address'] as String,
      orderTime: json['order_time'] as String,
      addressNotes: json['shipping_address_notes'] as String?,
      recipientName: json['recipient_name'] as String,
      orderItems: (json['order_details'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentLink: json['order_payment_link'] as String?,
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'recipient_contact': instance.recipientContact,
      'total': instance.total,
      'shipping_address': instance.shippingAddress,
      'order_time': instance.orderTime,
      'shipping_address_notes': instance.addressNotes,
      'recipient_name': instance.recipientName,
      'order_details': instance.orderItems,
      'order_payment_link': instance.paymentLink,
    };
