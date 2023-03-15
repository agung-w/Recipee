import 'package:json_annotation/json_annotation.dart';
import 'package:ta_recipe_app/entities/cooking_step.dart';
import 'package:ta_recipe_app/entities/recipe.dart';
import 'package:ta_recipe_app/entities/recipe_ingredient.dart';

part 'recipe_detail.g.dart';

@JsonSerializable()
class RecipeDetail extends Recipe {
  final List<CookingStep>? cookingSteps;
  final List<RecipeIngredient>? recipeIngredients;
  const RecipeDetail({
    required this.cookingSteps,
    required this.recipeIngredients,
    required id,
    required title,
    required posterPicUrl,
    required description,
    required prepTime,
    required serving,
    required user,
    required tag,
  }) : super(
            id: id,
            title: title,
            posterPicUrl: posterPicUrl,
            description: description,
            prepTime: prepTime,
            serving: serving,
            user: user,
            tag: tag);

  factory RecipeDetail.fromJson(Map<String, dynamic> json) =>
      _$RecipeDetailFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RecipeDetailToJson(this);
}
