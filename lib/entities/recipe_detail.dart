import 'package:json_annotation/json_annotation.dart';
import 'package:ta_recipe_app/entities/cooking_step.dart';
import 'package:ta_recipe_app/entities/recipe.dart';
import 'package:ta_recipe_app/entities/recipe_ingredient.dart';

part 'recipe_detail.g.dart';

@JsonSerializable()
class RecipeDetail extends Recipe {
  @JsonKey(name: "cooking_steps", includeFromJson: true, includeToJson: false)
  final List<CookingStep>? cookingSteps;
  @JsonKey(
      name: "cooking_steps_attributes",
      includeFromJson: false,
      includeToJson: true)
  final List<CookingStep>? cookingStepsAttributes;
  @JsonKey(
      name: "recipe_ingredients", includeFromJson: true, includeToJson: false)
  final List<RecipeIngredient>? recipeIngredients;
  @JsonKey(
      name: "recipe_ingredients_attributes",
      includeFromJson: false,
      includeToJson: true)
  final List<RecipeIngredient>? recipeIngredientsAttributes;
  const RecipeDetail({
    this.cookingSteps,
    this.recipeIngredients,
    this.cookingStepsAttributes,
    this.recipeIngredientsAttributes,
    required id,
    required title,
    required posterPicUrl,
    required description,
    required prepTime,
    required serving,
    required user,
    required tags,
  }) : super(
            id: id,
            title: title,
            posterPicUrl: posterPicUrl,
            description: description,
            prepTime: prepTime,
            serving: serving,
            user: user,
            tags: tags);

  factory RecipeDetail.fromJson(Map<String, dynamic> json) =>
      _$RecipeDetailFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RecipeDetailToJson(this);
}
