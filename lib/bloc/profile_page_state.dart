part of 'profile_page_bloc.dart';

@freezed
class ProfilePageState with _$ProfilePageState {
  const factory ProfilePageState.loading() = _Loading;
  const factory ProfilePageState.loaded(
      {required UserDetail user,
      required List<Recipe> savedList,
      required List<Recipe> createdList,
      String? savedListError,
      String? createdListError,
      bool? isSavedListLoading,
      bool? isCreatedListLoading}) = _Loaded;
  const factory ProfilePageState.failed({required String message}) = _Failed;
}
