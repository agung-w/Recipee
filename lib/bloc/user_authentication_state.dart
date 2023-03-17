part of 'user_authentication_bloc.dart';

@freezed
class UserAuthenticationState with _$UserAuthenticationState {
  const factory UserAuthenticationState.signedIn(UserDetail user) = SignedIn;
  const factory UserAuthenticationState.signedOut() = SignedOut;
  const factory UserAuthenticationState.loading() = Loading;
}
