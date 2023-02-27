part of 'user_authentication_bloc.dart';

@freezed
class UserAuthenticationState with _$UserAuthenticationState {
  const factory UserAuthenticationState.signedIn(User user) = _SignedIn;
  const factory UserAuthenticationState.signedOut() = _SignedOut;
  const factory UserAuthenticationState.loading() = _Loading;
}
