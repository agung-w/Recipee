part of 'recipe_detail_bloc.dart';

@freezed
class RecipeDetailEvent with _$RecipeDetailEvent {
  const factory RecipeDetailEvent.started(
      {required UserAuthenticationState authState,
      required int? recipeId,
      required BuildContext context}) = _Started;
  const factory RecipeDetailEvent.deleteRecipe(
      {required BuildContext context}) = _DeleteRecipe;
  const factory RecipeDetailEvent.editRecipe({required BuildContext context}) =
      _EditRecipe;
  const factory RecipeDetailEvent.refreshDetail(
      {required RecipeDetail recipe}) = _RefreshDetail;
}
