part of 'save_recipe_cubit.dart';

@freezed
class SaveRecipeState with _$SaveRecipeState {
  const factory SaveRecipeState.loading() = _Loading;
  const factory SaveRecipeState.finished({
    required int? id,
    required bool? isSaved,
  }) = _Finished;
}
