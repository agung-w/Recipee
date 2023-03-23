part of 'save_recipe_cubit.dart';

@freezed
class SaveRecipeState with _$SaveRecipeState {
  const factory SaveRecipeState.initial(
      {int? id, bool? isSaved, ApiResult<String>? result}) = _Initial;
  const factory SaveRecipeState.loading() = _Loading;
}
