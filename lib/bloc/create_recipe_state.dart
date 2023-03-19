part of 'create_recipe_bloc.dart';

@freezed
class CreateRecipeState with _$CreateRecipeState {
  const factory CreateRecipeState.initial() = _Initial;
  const factory CreateRecipeState.creating(
      {required RecipeDetail recipe,
      String? error,
      required List<IngredientFormTile> ingredientForms,
      required List<CookingStepFormTile> cookingStepForms}) = _Creating;
}
