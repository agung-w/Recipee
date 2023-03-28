part of 'recipe_detail_bloc.dart';

@freezed
class RecipeDetailEvent with _$RecipeDetailEvent {
  const factory RecipeDetailEvent.started(
      {required UserAuthenticationState authState,
      required int recipeId,
      required BuildContext context}) = _Started;
}
