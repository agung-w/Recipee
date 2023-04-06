part of 'my_profile_page_bloc.dart';

@freezed
class MyProfilePageEvent with _$MyProfilePageEvent {
  const factory MyProfilePageEvent.started(
      {required UserAuthenticationState authState}) = _Started;
}
