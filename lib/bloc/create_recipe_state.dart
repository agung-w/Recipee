part of 'create_recipe_bloc.dart';

@freezed
class CreateRecipeState with _$CreateRecipeState {
  const factory CreateRecipeState.initial({
    required RecipeDetail? recipe,
  }) = _Initial;
  const factory CreateRecipeState.creating({
    required RecipeDetail recipe,
  }) = _Creating;
}
