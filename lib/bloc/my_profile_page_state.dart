part of 'my_profile_page_bloc.dart';

@freezed
class MyProfilePageState with _$MyProfilePageState {
  const factory MyProfilePageState.initial() = _Initial;
  const factory MyProfilePageState.loaded({
    required UserDetail user,
    required List<Recipe> savedList,
    required List<Recipe> createdList,
    required List<Recipe> draftList,
    required List<Recipe> rejectedList,
    required List<Recipe> pendingList,
    String? savedListError,
    String? createdListError,
    String? draftListError,
    String? rejectedListError,
    String? pendingListError,
    bool? isSavedListLoading,
    bool? isCreatedListLoading,
    bool? isDraftListLoading,
    bool? isRejectedListLoading,
    bool? isPendingListLoading,
  }) = _Loaded;
}
