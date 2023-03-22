// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserAuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        loginByEmail,
    required TResult Function() logout,
    required TResult Function() checkSignInStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        loginByEmail,
    TResult? Function()? logout,
    TResult? Function()? checkSignInStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        loginByEmail,
    TResult Function()? logout,
    TResult Function()? checkSignInStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginByEmail value) loginByEmail,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginByEmail value)? loginByEmail,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginByEmail value)? loginByEmail,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthenticationEventCopyWith<$Res> {
  factory $UserAuthenticationEventCopyWith(UserAuthenticationEvent value,
          $Res Function(UserAuthenticationEvent) then) =
      _$UserAuthenticationEventCopyWithImpl<$Res, UserAuthenticationEvent>;
}

/// @nodoc
class _$UserAuthenticationEventCopyWithImpl<$Res,
        $Val extends UserAuthenticationEvent>
    implements $UserAuthenticationEventCopyWith<$Res> {
  _$UserAuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginByEmailCopyWith<$Res> {
  factory _$$_LoginByEmailCopyWith(
          _$_LoginByEmail value, $Res Function(_$_LoginByEmail) then) =
      __$$_LoginByEmailCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, BuildContext context});
}

/// @nodoc
class __$$_LoginByEmailCopyWithImpl<$Res>
    extends _$UserAuthenticationEventCopyWithImpl<$Res, _$_LoginByEmail>
    implements _$$_LoginByEmailCopyWith<$Res> {
  __$$_LoginByEmailCopyWithImpl(
      _$_LoginByEmail _value, $Res Function(_$_LoginByEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? context = null,
  }) {
    return _then(_$_LoginByEmail(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_LoginByEmail implements _LoginByEmail {
  const _$_LoginByEmail(
      {required this.email, required this.password, required this.context});

  @override
  final String email;
  @override
  final String password;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UserAuthenticationEvent.loginByEmail(email: $email, password: $password, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginByEmail &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginByEmailCopyWith<_$_LoginByEmail> get copyWith =>
      __$$_LoginByEmailCopyWithImpl<_$_LoginByEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        loginByEmail,
    required TResult Function() logout,
    required TResult Function() checkSignInStatus,
  }) {
    return loginByEmail(email, password, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        loginByEmail,
    TResult? Function()? logout,
    TResult? Function()? checkSignInStatus,
  }) {
    return loginByEmail?.call(email, password, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        loginByEmail,
    TResult Function()? logout,
    TResult Function()? checkSignInStatus,
    required TResult orElse(),
  }) {
    if (loginByEmail != null) {
      return loginByEmail(email, password, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginByEmail value) loginByEmail,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
  }) {
    return loginByEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginByEmail value)? loginByEmail,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
  }) {
    return loginByEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginByEmail value)? loginByEmail,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    required TResult orElse(),
  }) {
    if (loginByEmail != null) {
      return loginByEmail(this);
    }
    return orElse();
  }
}

abstract class _LoginByEmail implements UserAuthenticationEvent {
  const factory _LoginByEmail(
      {required final String email,
      required final String password,
      required final BuildContext context}) = _$_LoginByEmail;

  String get email;
  String get password;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_LoginByEmailCopyWith<_$_LoginByEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$UserAuthenticationEventCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'UserAuthenticationEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        loginByEmail,
    required TResult Function() logout,
    required TResult Function() checkSignInStatus,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        loginByEmail,
    TResult? Function()? logout,
    TResult? Function()? checkSignInStatus,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        loginByEmail,
    TResult Function()? logout,
    TResult Function()? checkSignInStatus,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginByEmail value) loginByEmail,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginByEmail value)? loginByEmail,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginByEmail value)? loginByEmail,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements UserAuthenticationEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
abstract class _$$_CheckSignInStatusCopyWith<$Res> {
  factory _$$_CheckSignInStatusCopyWith(_$_CheckSignInStatus value,
          $Res Function(_$_CheckSignInStatus) then) =
      __$$_CheckSignInStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckSignInStatusCopyWithImpl<$Res>
    extends _$UserAuthenticationEventCopyWithImpl<$Res, _$_CheckSignInStatus>
    implements _$$_CheckSignInStatusCopyWith<$Res> {
  __$$_CheckSignInStatusCopyWithImpl(
      _$_CheckSignInStatus _value, $Res Function(_$_CheckSignInStatus) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckSignInStatus implements _CheckSignInStatus {
  const _$_CheckSignInStatus();

  @override
  String toString() {
    return 'UserAuthenticationEvent.checkSignInStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckSignInStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        loginByEmail,
    required TResult Function() logout,
    required TResult Function() checkSignInStatus,
  }) {
    return checkSignInStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        loginByEmail,
    TResult? Function()? logout,
    TResult? Function()? checkSignInStatus,
  }) {
    return checkSignInStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        loginByEmail,
    TResult Function()? logout,
    TResult Function()? checkSignInStatus,
    required TResult orElse(),
  }) {
    if (checkSignInStatus != null) {
      return checkSignInStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginByEmail value) loginByEmail,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
  }) {
    return checkSignInStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginByEmail value)? loginByEmail,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
  }) {
    return checkSignInStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginByEmail value)? loginByEmail,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    required TResult orElse(),
  }) {
    if (checkSignInStatus != null) {
      return checkSignInStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckSignInStatus implements UserAuthenticationEvent {
  const factory _CheckSignInStatus() = _$_CheckSignInStatus;
}

/// @nodoc
mixin _$UserAuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDetail user) signedIn,
    required TResult Function() signedOut,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserDetail user)? signedIn,
    TResult? Function()? signedOut,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDetail user)? signedIn,
    TResult Function()? signedOut,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SignedOut value)? signedOut,
    TResult? Function(Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthenticationStateCopyWith<$Res> {
  factory $UserAuthenticationStateCopyWith(UserAuthenticationState value,
          $Res Function(UserAuthenticationState) then) =
      _$UserAuthenticationStateCopyWithImpl<$Res, UserAuthenticationState>;
}

/// @nodoc
class _$UserAuthenticationStateCopyWithImpl<$Res,
        $Val extends UserAuthenticationState>
    implements $UserAuthenticationStateCopyWith<$Res> {
  _$UserAuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignedInCopyWith<$Res> {
  factory _$$SignedInCopyWith(
          _$SignedIn value, $Res Function(_$SignedIn) then) =
      __$$SignedInCopyWithImpl<$Res>;
  @useResult
  $Res call({UserDetail user});
}

/// @nodoc
class __$$SignedInCopyWithImpl<$Res>
    extends _$UserAuthenticationStateCopyWithImpl<$Res, _$SignedIn>
    implements _$$SignedInCopyWith<$Res> {
  __$$SignedInCopyWithImpl(_$SignedIn _value, $Res Function(_$SignedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SignedIn(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDetail,
    ));
  }
}

/// @nodoc

class _$SignedIn implements SignedIn {
  const _$SignedIn(this.user);

  @override
  final UserDetail user;

  @override
  String toString() {
    return 'UserAuthenticationState.signedIn(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignedIn &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignedInCopyWith<_$SignedIn> get copyWith =>
      __$$SignedInCopyWithImpl<_$SignedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDetail user) signedIn,
    required TResult Function() signedOut,
    required TResult Function() loading,
  }) {
    return signedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserDetail user)? signedIn,
    TResult? Function()? signedOut,
    TResult? Function()? loading,
  }) {
    return signedIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDetail user)? signedIn,
    TResult Function()? signedOut,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(Loading value) loading,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SignedOut value)? signedOut,
    TResult? Function(Loading value)? loading,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class SignedIn implements UserAuthenticationState {
  const factory SignedIn(final UserDetail user) = _$SignedIn;

  UserDetail get user;
  @JsonKey(ignore: true)
  _$$SignedInCopyWith<_$SignedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignedOutCopyWith<$Res> {
  factory _$$SignedOutCopyWith(
          _$SignedOut value, $Res Function(_$SignedOut) then) =
      __$$SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignedOutCopyWithImpl<$Res>
    extends _$UserAuthenticationStateCopyWithImpl<$Res, _$SignedOut>
    implements _$$SignedOutCopyWith<$Res> {
  __$$SignedOutCopyWithImpl(
      _$SignedOut _value, $Res Function(_$SignedOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignedOut implements SignedOut {
  const _$SignedOut();

  @override
  String toString() {
    return 'UserAuthenticationState.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDetail user) signedIn,
    required TResult Function() signedOut,
    required TResult Function() loading,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserDetail user)? signedIn,
    TResult? Function()? signedOut,
    TResult? Function()? loading,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDetail user)? signedIn,
    TResult Function()? signedOut,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(Loading value) loading,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SignedOut value)? signedOut,
    TResult? Function(Loading value)? loading,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class SignedOut implements UserAuthenticationState {
  const factory SignedOut() = _$SignedOut;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$UserAuthenticationStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'UserAuthenticationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDetail user) signedIn,
    required TResult Function() signedOut,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserDetail user)? signedIn,
    TResult? Function()? signedOut,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDetail user)? signedIn,
    TResult Function()? signedOut,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SignedOut value)? signedOut,
    TResult? Function(Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements UserAuthenticationState {
  const factory Loading() = _$Loading;
}
