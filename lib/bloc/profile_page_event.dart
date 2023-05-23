part of 'profile_page_bloc.dart';

@freezed
class ProfilePageEvent with _$ProfilePageEvent {
  const factory ProfilePageEvent.getProfileData(
      {required String username,
      required String? token,
      required String root}) = _GetProfileData;
  const factory ProfilePageEvent.changeSaveStatus(
      {required int recipeId, required bool? isSaved}) = _ChangeSaveStatus;
}
