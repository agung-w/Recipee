part of 'profile_page_bloc.dart';

@freezed
class ProfilePageState with _$ProfilePageState {
  const factory ProfilePageState.loading() = _Loading;
  const factory ProfilePageState.loaded(
      {required UserDetail user,
      required List<Recipe?> savedRecipeList,
      required List<Recipe?> createdRecipeList}) = _Loaded;
  const factory ProfilePageState.failed({required String message}) = _Failed;
}
