part of 'user_authentication_bloc.dart';

@freezed
class UserAuthenticationEvent with _$UserAuthenticationEvent {
  const factory UserAuthenticationEvent.loginByEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) = _LoginByEmail;
  const factory UserAuthenticationEvent.logout() = _Logout;
  const factory UserAuthenticationEvent.checkSignInStatus() =
      _CheckSignInStatus;
}
