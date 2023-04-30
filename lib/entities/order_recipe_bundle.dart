import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:ta_recipe_app/entities/recipe_bundle.dart';

part 'order_recipe_bundle.g.dart';

@JsonSerializable()
@CopyWith()
class OrderRecipeBundle extends RecipeBundle {
  @JsonKey(defaultValue: 0)
  final int quantity;
  @JsonKey(defaultValue: 0)
  final double totalPrice;
  const OrderRecipeBundle(
      {required this.totalPrice,
      required this.quantity,
      required super.id,
      required super.title,
      required super.description,
      required super.price,
      required super.stock,
      required super.picUrl});
  factory OrderRecipeBundle.fromJson(Map<String, dynamic> json) =>
      _$OrderRecipeBundleFromJson(json);
  set quantity(int value) => value < 0 ? value = 0 : value = value;
  @override
  Map<String, dynamic> toJson() => _$OrderRecipeBundleToJson(this);
}
