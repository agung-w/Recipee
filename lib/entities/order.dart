import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ta_recipe_app/entities/order_item.dart';

part 'order.g.dart';

@JsonSerializable()
@CopyWith()
class Order {
  final String id;
  final String status;
  @JsonKey(name: "recipient_contact")
  final String recipientContact;
  final double total;
  @JsonKey(name: "shipping_address")
  final String shippingAddress;
  @JsonKey(name: "order_time")
  final String orderTime;
  @JsonKey(name: "shipping_address_notes")
  final String? addressNotes;
  @JsonKey(name: "recipient_name")
  final String recipientName;
  @JsonKey(name: "order_details")
  final List<OrderItem> orderItems;
  @JsonKey(name: "order_payment_link")
  final String paymentLink;
  const Order({
    required this.id,
    required this.status,
    required this.recipientContact,
    required this.total,
    required this.shippingAddress,
    required this.orderTime,
    required this.addressNotes,
    required this.recipientName,
    required this.orderItems,
    required this.paymentLink,
  });
  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
  Map<String, dynamic> toJson() => _$OrderToJson(this);
}
