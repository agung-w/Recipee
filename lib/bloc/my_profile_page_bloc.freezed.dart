// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_profile_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyProfilePageEvent {
  UserAuthenticationState get authState => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuthenticationState authState) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState authState)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState authState)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyProfilePageEventCopyWith<MyProfilePageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyProfilePageEventCopyWith<$Res> {
  factory $MyProfilePageEventCopyWith(
          MyProfilePageEvent value, $Res Function(MyProfilePageEvent) then) =
      _$MyProfilePageEventCopyWithImpl<$Res, MyProfilePageEvent>;
  @useResult
  $Res call({UserAuthenticationState authState});

  $UserAuthenticationStateCopyWith<$Res> get authState;
}

/// @nodoc
class _$MyProfilePageEventCopyWithImpl<$Res, $Val extends MyProfilePageEvent>
    implements $MyProfilePageEventCopyWith<$Res> {
  _$MyProfilePageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authState = null,
  }) {
    return _then(_value.copyWith(
      authState: null == authState
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as UserAuthenticationState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserAuthenticationStateCopyWith<$Res> get authState {
    return $UserAuthenticationStateCopyWith<$Res>(_value.authState, (value) {
      return _then(_value.copyWith(authState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res>
    implements $MyProfilePageEventCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserAuthenticationState authState});

  @override
  $UserAuthenticationStateCopyWith<$Res> get authState;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$MyProfilePageEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authState = null,
  }) {
    return _then(_$_Started(
      authState: null == authState
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as UserAuthenticationState,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.authState});

  @override
  final UserAuthenticationState authState;

  @override
  String toString() {
    return 'MyProfilePageEvent.started(authState: $authState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.authState, authState) ||
                other.authState == authState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuthenticationState authState) started,
  }) {
    return started(authState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState authState)? started,
  }) {
    return started?.call(authState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState authState)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(authState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MyProfilePageEvent {
  const factory _Started({required final UserAuthenticationState authState}) =
      _$_Started;

  @override
  UserAuthenticationState get authState;
  @override
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MyProfilePageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            SignedIn authState,
            ApiResult<List<Recipe?>> savedListResult,
            ApiResult<List<Recipe?>> createdListResult,
            ApiResult<List<Recipe?>> draftListResult,
            ApiResult<List<Recipe?>> rejectedListResult,
            ApiResult<List<Recipe?>> pendingListResult)
        loaded,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            SignedIn authState,
            ApiResult<List<Recipe?>> savedListResult,
            ApiResult<List<Recipe?>> createdListResult,
            ApiResult<List<Recipe?>> draftListResult,
            ApiResult<List<Recipe?>> rejectedListResult,
            ApiResult<List<Recipe?>> pendingListResult)?
        loaded,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            SignedIn authState,
            ApiResult<List<Recipe?>> savedListResult,
            ApiResult<List<Recipe?>> createdListResult,
            ApiResult<List<Recipe?>> draftListResult,
            ApiResult<List<Recipe?>> rejectedListResult,
            ApiResult<List<Recipe?>> pendingListResult)?
        loaded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyProfilePageStateCopyWith<$Res> {
  factory $MyProfilePageStateCopyWith(
          MyProfilePageState value, $Res Function(MyProfilePageState) then) =
      _$MyProfilePageStateCopyWithImpl<$Res, MyProfilePageState>;
}

/// @nodoc
class _$MyProfilePageStateCopyWithImpl<$Res, $Val extends MyProfilePageState>
    implements $MyProfilePageStateCopyWith<$Res> {
  _$MyProfilePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$MyProfilePageStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'MyProfilePageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            SignedIn authState,
            ApiResult<List<Recipe?>> savedListResult,
            ApiResult<List<Recipe?>> createdListResult,
            ApiResult<List<Recipe?>> draftListResult,
            ApiResult<List<Recipe?>> rejectedListResult,
            ApiResult<List<Recipe?>> pendingListResult)
        loaded,
    required TResult Function(String message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            SignedIn authState,
            ApiResult<List<Recipe?>> savedListResult,
            ApiResult<List<Recipe?>> createdListResult,
            ApiResult<List<Recipe?>> draftListResult,
            ApiResult<List<Recipe?>> rejectedListResult,
            ApiResult<List<Recipe?>> pendingListResult)?
        loaded,
    TResult? Function(String message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            SignedIn authState,
            ApiResult<List<Recipe?>> savedListResult,
            ApiResult<List<Recipe?>> createdListResult,
            ApiResult<List<Recipe?>> draftListResult,
            ApiResult<List<Recipe?>> rejectedListResult,
            ApiResult<List<Recipe?>> pendingListResult)?
        loaded,
    TResult Function(String message)? failed,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MyProfilePageState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {SignedIn authState,
      ApiResult<List<Recipe?>> savedListResult,
      ApiResult<List<Recipe?>> createdListResult,
      ApiResult<List<Recipe?>> draftListResult,
      ApiResult<List<Recipe?>> rejectedListResult,
      ApiResult<List<Recipe?>> pendingListResult});

  $ApiResultCopyWith<List<Recipe?>, $Res> get savedListResult;
  $ApiResultCopyWith<List<Recipe?>, $Res> get createdListResult;
  $ApiResultCopyWith<List<Recipe?>, $Res> get draftListResult;
  $ApiResultCopyWith<List<Recipe?>, $Res> get rejectedListResult;
  $ApiResultCopyWith<List<Recipe?>, $Res> get pendingListResult;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$MyProfilePageStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authState = null,
    Object? savedListResult = null,
    Object? createdListResult = null,
    Object? draftListResult = null,
    Object? rejectedListResult = null,
    Object? pendingListResult = null,
  }) {
    return _then(_$_Loaded(
      authState: null == authState
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as SignedIn,
      savedListResult: null == savedListResult
          ? _value.savedListResult
          : savedListResult // ignore: cast_nullable_to_non_nullable
              as ApiResult<List<Recipe?>>,
      createdListResult: null == createdListResult
          ? _value.createdListResult
          : createdListResult // ignore: cast_nullable_to_non_nullable
              as ApiResult<List<Recipe?>>,
      draftListResult: null == draftListResult
          ? _value.draftListResult
          : draftListResult // ignore: cast_nullable_to_non_nullable
              as ApiResult<List<Recipe?>>,
      rejectedListResult: null == rejectedListResult
          ? _value.rejectedListResult
          : rejectedListResult // ignore: cast_nullable_to_non_nullable
              as ApiResult<List<Recipe?>>,
      pendingListResult: null == pendingListResult
          ? _value.pendingListResult
          : pendingListResult // ignore: cast_nullable_to_non_nullable
              as ApiResult<List<Recipe?>>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiResultCopyWith<List<Recipe?>, $Res> get savedListResult {
    return $ApiResultCopyWith<List<Recipe?>, $Res>(_value.savedListResult,
        (value) {
      return _then(_value.copyWith(savedListResult: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiResultCopyWith<List<Recipe?>, $Res> get createdListResult {
    return $ApiResultCopyWith<List<Recipe?>, $Res>(_value.createdListResult,
        (value) {
      return _then(_value.copyWith(createdListResult: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiResultCopyWith<List<Recipe?>, $Res> get draftListResult {
    return $ApiResultCopyWith<List<Recipe?>, $Res>(_value.draftListResult,
        (value) {
      return _then(_value.copyWith(draftListResult: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiResultCopyWith<List<Recipe?>, $Res> get rejectedListResult {
    return $ApiResultCopyWith<List<Recipe?>, $Res>(_value.rejectedListResult,
        (value) {
      return _then(_value.copyWith(rejectedListResult: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiResultCopyWith<List<Recipe?>, $Res> get pendingListResult {
    return $ApiResultCopyWith<List<Recipe?>, $Res>(_value.pendingListResult,
        (value) {
      return _then(_value.copyWith(pendingListResult: value));
    });
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required this.authState,
      required this.savedListResult,
      required this.createdListResult,
      required this.draftListResult,
      required this.rejectedListResult,
      required this.pendingListResult});

  @override
  final SignedIn authState;
  @override
  final ApiResult<List<Recipe?>> savedListResult;
  @override
  final ApiResult<List<Recipe?>> createdListResult;
  @override
  final ApiResult<List<Recipe?>> draftListResult;
  @override
  final ApiResult<List<Recipe?>> rejectedListResult;
  @override
  final ApiResult<List<Recipe?>> pendingListResult;

  @override
  String toString() {
    return 'MyProfilePageState.loaded(authState: $authState, savedListResult: $savedListResult, createdListResult: $createdListResult, draftListResult: $draftListResult, rejectedListResult: $rejectedListResult, pendingListResult: $pendingListResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.authState, authState) ||
                other.authState == authState) &&
            (identical(other.savedListResult, savedListResult) ||
                other.savedListResult == savedListResult) &&
            (identical(other.createdListResult, createdListResult) ||
                other.createdListResult == createdListResult) &&
            (identical(other.draftListResult, draftListResult) ||
                other.draftListResult == draftListResult) &&
            (identical(other.rejectedListResult, rejectedListResult) ||
                other.rejectedListResult == rejectedListResult) &&
            (identical(other.pendingListResult, pendingListResult) ||
                other.pendingListResult == pendingListResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      authState,
      savedListResult,
      createdListResult,
      draftListResult,
      rejectedListResult,
      pendingListResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            SignedIn authState,
            ApiResult<List<Recipe?>> savedListResult,
            ApiResult<List<Recipe?>> createdListResult,
            ApiResult<List<Recipe?>> draftListResult,
            ApiResult<List<Recipe?>> rejectedListResult,
            ApiResult<List<Recipe?>> pendingListResult)
        loaded,
    required TResult Function(String message) failed,
  }) {
    return loaded(authState, savedListResult, createdListResult,
        draftListResult, rejectedListResult, pendingListResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            SignedIn authState,
            ApiResult<List<Recipe?>> savedListResult,
            ApiResult<List<Recipe?>> createdListResult,
            ApiResult<List<Recipe?>> draftListResult,
            ApiResult<List<Recipe?>> rejectedListResult,
            ApiResult<List<Recipe?>> pendingListResult)?
        loaded,
    TResult? Function(String message)? failed,
  }) {
    return loaded?.call(authState, savedListResult, createdListResult,
        draftListResult, rejectedListResult, pendingListResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            SignedIn authState,
            ApiResult<List<Recipe?>> savedListResult,
            ApiResult<List<Recipe?>> createdListResult,
            ApiResult<List<Recipe?>> draftListResult,
            ApiResult<List<Recipe?>> rejectedListResult,
            ApiResult<List<Recipe?>> pendingListResult)?
        loaded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(authState, savedListResult, createdListResult,
          draftListResult, rejectedListResult, pendingListResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements MyProfilePageState {
  const factory _Loaded(
      {required final SignedIn authState,
      required final ApiResult<List<Recipe?>> savedListResult,
      required final ApiResult<List<Recipe?>> createdListResult,
      required final ApiResult<List<Recipe?>> draftListResult,
      required final ApiResult<List<Recipe?>> rejectedListResult,
      required final ApiResult<List<Recipe?>> pendingListResult}) = _$_Loaded;

  SignedIn get authState;
  ApiResult<List<Recipe?>> get savedListResult;
  ApiResult<List<Recipe?>> get createdListResult;
  ApiResult<List<Recipe?>> get draftListResult;
  ApiResult<List<Recipe?>> get rejectedListResult;
  ApiResult<List<Recipe?>> get pendingListResult;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailedCopyWith<$Res> {
  factory _$$_FailedCopyWith(_$_Failed value, $Res Function(_$_Failed) then) =
      __$$_FailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_FailedCopyWithImpl<$Res>
    extends _$MyProfilePageStateCopyWithImpl<$Res, _$_Failed>
    implements _$$_FailedCopyWith<$Res> {
  __$$_FailedCopyWithImpl(_$_Failed _value, $Res Function(_$_Failed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Failed(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MyProfilePageState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      __$$_FailedCopyWithImpl<_$_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            SignedIn authState,
            ApiResult<List<Recipe?>> savedListResult,
            ApiResult<List<Recipe?>> createdListResult,
            ApiResult<List<Recipe?>> draftListResult,
            ApiResult<List<Recipe?>> rejectedListResult,
            ApiResult<List<Recipe?>> pendingListResult)
        loaded,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            SignedIn authState,
            ApiResult<List<Recipe?>> savedListResult,
            ApiResult<List<Recipe?>> createdListResult,
            ApiResult<List<Recipe?>> draftListResult,
            ApiResult<List<Recipe?>> rejectedListResult,
            ApiResult<List<Recipe?>> pendingListResult)?
        loaded,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            SignedIn authState,
            ApiResult<List<Recipe?>> savedListResult,
            ApiResult<List<Recipe?>> createdListResult,
            ApiResult<List<Recipe?>> draftListResult,
            ApiResult<List<Recipe?>> rejectedListResult,
            ApiResult<List<Recipe?>> pendingListResult)?
        loaded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements MyProfilePageState {
  const factory _Failed({required final String message}) = _$_Failed;

  String get message;
  @JsonKey(ignore: true)
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      throw _privateConstructorUsedError;
}
