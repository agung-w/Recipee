import 'package:json_annotation/json_annotation.dart';
import 'package:ta_recipe_app/entities/ingredient.dart';
import 'package:ta_recipe_app/entities/metric.dart';

part 'recipe_ingredient.g.dart';

@JsonSerializable()
class RecipeIngredient {
  final int? quantity;
  final Ingredient ingredient;
  final Metric? metric;
  const RecipeIngredient({
    this.quantity,
    required this.ingredient,
    this.metric,
  });

  factory RecipeIngredient.fromJson(Map<String, dynamic> json) =>
      _$RecipeIngredientFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeIngredientToJson(this);
}
