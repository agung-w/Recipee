import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:ta_recipe_app/entities/ingredient.dart';
import 'package:ta_recipe_app/entities/metric.dart';

part 'recipe_ingredient.g.dart';

@JsonSerializable()
@CopyWith()
class RecipeIngredient {
  int? quantity;
  @JsonKey(includeFromJson: true, includeToJson: false)
  Ingredient ingredient;
  @JsonKey(name: "ingredient_id", includeFromJson: false, includeToJson: true)
  int? ingredientId;
  @JsonKey(includeFromJson: true, includeToJson: false)
  Metric? metric;
  @JsonKey(name: "metric_id", includeFromJson: false, includeToJson: true)
  int? metricId;
  RecipeIngredient({
    this.quantity,
    required this.ingredient,
    this.metric,
    this.ingredientId,
    this.metricId,
  });

  factory RecipeIngredient.fromJson(Map<String, dynamic> json) =>
      _$RecipeIngredientFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeIngredientToJson(this);
}
