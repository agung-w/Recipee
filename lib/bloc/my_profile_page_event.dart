part of 'my_profile_page_bloc.dart';

@freezed
class MyProfilePageEvent with _$MyProfilePageEvent {
  const factory MyProfilePageEvent.started(
      {required UserAuthenticationState authState}) = _Started;
  const factory MyProfilePageEvent.refreshSavedRecipeList(
      {required UserAuthenticationState authState}) = _RefreshSavedRecipeList;
  const factory MyProfilePageEvent.refreshCreatedRecipeList(
      {required UserAuthenticationState authState}) = _RefreshCreatedRecipeList;
  const factory MyProfilePageEvent.refreshDraftRecipeList(
      {required UserAuthenticationState authState}) = _RefreshDraftRecipeList;
  const factory MyProfilePageEvent.refreshRejectedRecipeList(
          {required UserAuthenticationState authState}) =
      _RefreshRejectedRecipeList;
  const factory MyProfilePageEvent.refreshPendingRecipeList(
      {required UserAuthenticationState authState}) = _RefreshPendingRecipeList;
}
