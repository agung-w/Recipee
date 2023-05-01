import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:ta_recipe_app/entities/recipe_bundle.dart';

part 'order_item.g.dart';

@JsonSerializable()
@CopyWith()
class OrderItem {
  final int quantity;
  @JsonKey(name: "recipe_bundle")
  final RecipeBundle recipeBundle;
  const OrderItem({
    required this.quantity,
    required this.recipeBundle,
  });
  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
  set quantity(int value) => value < 0 ? value = 0 : value = value;

  Map<String, dynamic> toJson() => _$OrderItemToJson(this);
}
