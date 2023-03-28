part of 'recipe_detail_bloc.dart';

@freezed
class RecipeDetailState with _$RecipeDetailState {
  const factory RecipeDetailState.loading() = _Loading;
  const factory RecipeDetailState.loaded(
      {required RecipeDetail recipeDetail,
      required ApiResult<List<RecipeComment?>> comment}) = _Loaded;
  const factory RecipeDetailState.failed({String? message}) = _Failed;
}
