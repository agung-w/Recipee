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
    required TResult Function(UserAuthenticationState authState)
        refreshSavedRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshCreatedRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshDraftRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshRejectedRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshPendingRecipeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState authState)? started,
    TResult? Function(UserAuthenticationState authState)?
        refreshSavedRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshCreatedRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshDraftRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshRejectedRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshPendingRecipeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState authState)? started,
    TResult Function(UserAuthenticationState authState)? refreshSavedRecipeList,
    TResult Function(UserAuthenticationState authState)?
        refreshCreatedRecipeList,
    TResult Function(UserAuthenticationState authState)? refreshDraftRecipeList,
    TResult Function(UserAuthenticationState authState)?
        refreshRejectedRecipeList,
    TResult Function(UserAuthenticationState authState)?
        refreshPendingRecipeList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshSavedRecipeList value)
        refreshSavedRecipeList,
    required TResult Function(_RefreshCreatedRecipeList value)
        refreshCreatedRecipeList,
    required TResult Function(_RefreshDraftRecipeList value)
        refreshDraftRecipeList,
    required TResult Function(_RefreshRejectedRecipeList value)
        refreshRejectedRecipeList,
    required TResult Function(_RefreshPendingRecipeList value)
        refreshPendingRecipeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshSavedRecipeList value)? refreshSavedRecipeList,
    TResult? Function(_RefreshCreatedRecipeList value)?
        refreshCreatedRecipeList,
    TResult? Function(_RefreshDraftRecipeList value)? refreshDraftRecipeList,
    TResult? Function(_RefreshRejectedRecipeList value)?
        refreshRejectedRecipeList,
    TResult? Function(_RefreshPendingRecipeList value)?
        refreshPendingRecipeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshSavedRecipeList value)? refreshSavedRecipeList,
    TResult Function(_RefreshCreatedRecipeList value)? refreshCreatedRecipeList,
    TResult Function(_RefreshDraftRecipeList value)? refreshDraftRecipeList,
    TResult Function(_RefreshRejectedRecipeList value)?
        refreshRejectedRecipeList,
    TResult Function(_RefreshPendingRecipeList value)? refreshPendingRecipeList,
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
    required TResult Function(UserAuthenticationState authState)
        refreshSavedRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshCreatedRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshDraftRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshRejectedRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshPendingRecipeList,
  }) {
    return started(authState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState authState)? started,
    TResult? Function(UserAuthenticationState authState)?
        refreshSavedRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshCreatedRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshDraftRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshRejectedRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshPendingRecipeList,
  }) {
    return started?.call(authState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState authState)? started,
    TResult Function(UserAuthenticationState authState)? refreshSavedRecipeList,
    TResult Function(UserAuthenticationState authState)?
        refreshCreatedRecipeList,
    TResult Function(UserAuthenticationState authState)? refreshDraftRecipeList,
    TResult Function(UserAuthenticationState authState)?
        refreshRejectedRecipeList,
    TResult Function(UserAuthenticationState authState)?
        refreshPendingRecipeList,
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
    required TResult Function(_RefreshSavedRecipeList value)
        refreshSavedRecipeList,
    required TResult Function(_RefreshCreatedRecipeList value)
        refreshCreatedRecipeList,
    required TResult Function(_RefreshDraftRecipeList value)
        refreshDraftRecipeList,
    required TResult Function(_RefreshRejectedRecipeList value)
        refreshRejectedRecipeList,
    required TResult Function(_RefreshPendingRecipeList value)
        refreshPendingRecipeList,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshSavedRecipeList value)? refreshSavedRecipeList,
    TResult? Function(_RefreshCreatedRecipeList value)?
        refreshCreatedRecipeList,
    TResult? Function(_RefreshDraftRecipeList value)? refreshDraftRecipeList,
    TResult? Function(_RefreshRejectedRecipeList value)?
        refreshRejectedRecipeList,
    TResult? Function(_RefreshPendingRecipeList value)?
        refreshPendingRecipeList,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshSavedRecipeList value)? refreshSavedRecipeList,
    TResult Function(_RefreshCreatedRecipeList value)? refreshCreatedRecipeList,
    TResult Function(_RefreshDraftRecipeList value)? refreshDraftRecipeList,
    TResult Function(_RefreshRejectedRecipeList value)?
        refreshRejectedRecipeList,
    TResult Function(_RefreshPendingRecipeList value)? refreshPendingRecipeList,
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
abstract class _$$_RefreshSavedRecipeListCopyWith<$Res>
    implements $MyProfilePageEventCopyWith<$Res> {
  factory _$$_RefreshSavedRecipeListCopyWith(_$_RefreshSavedRecipeList value,
          $Res Function(_$_RefreshSavedRecipeList) then) =
      __$$_RefreshSavedRecipeListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserAuthenticationState authState});

  @override
  $UserAuthenticationStateCopyWith<$Res> get authState;
}

/// @nodoc
class __$$_RefreshSavedRecipeListCopyWithImpl<$Res>
    extends _$MyProfilePageEventCopyWithImpl<$Res, _$_RefreshSavedRecipeList>
    implements _$$_RefreshSavedRecipeListCopyWith<$Res> {
  __$$_RefreshSavedRecipeListCopyWithImpl(_$_RefreshSavedRecipeList _value,
      $Res Function(_$_RefreshSavedRecipeList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authState = null,
  }) {
    return _then(_$_RefreshSavedRecipeList(
      authState: null == authState
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as UserAuthenticationState,
    ));
  }
}

/// @nodoc

class _$_RefreshSavedRecipeList implements _RefreshSavedRecipeList {
  const _$_RefreshSavedRecipeList({required this.authState});

  @override
  final UserAuthenticationState authState;

  @override
  String toString() {
    return 'MyProfilePageEvent.refreshSavedRecipeList(authState: $authState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshSavedRecipeList &&
            (identical(other.authState, authState) ||
                other.authState == authState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshSavedRecipeListCopyWith<_$_RefreshSavedRecipeList> get copyWith =>
      __$$_RefreshSavedRecipeListCopyWithImpl<_$_RefreshSavedRecipeList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuthenticationState authState) started,
    required TResult Function(UserAuthenticationState authState)
        refreshSavedRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshCreatedRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshDraftRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshRejectedRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshPendingRecipeList,
  }) {
    return refreshSavedRecipeList(authState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState authState)? started,
    TResult? Function(UserAuthenticationState authState)?
        refreshSavedRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshCreatedRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshDraftRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshRejectedRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshPendingRecipeList,
  }) {
    return refreshSavedRecipeList?.call(authState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState authState)? started,
    TResult Function(UserAuthenticationState authState)? refreshSavedRecipeList,
    TResult Function(UserAuthenticationState authState)?
        refreshCreatedRecipeList,
    TResult Function(UserAuthenticationState authState)? refreshDraftRecipeList,
    TResult Function(UserAuthenticationState authState)?
        refreshRejectedRecipeList,
    TResult Function(UserAuthenticationState authState)?
        refreshPendingRecipeList,
    required TResult orElse(),
  }) {
    if (refreshSavedRecipeList != null) {
      return refreshSavedRecipeList(authState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshSavedRecipeList value)
        refreshSavedRecipeList,
    required TResult Function(_RefreshCreatedRecipeList value)
        refreshCreatedRecipeList,
    required TResult Function(_RefreshDraftRecipeList value)
        refreshDraftRecipeList,
    required TResult Function(_RefreshRejectedRecipeList value)
        refreshRejectedRecipeList,
    required TResult Function(_RefreshPendingRecipeList value)
        refreshPendingRecipeList,
  }) {
    return refreshSavedRecipeList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshSavedRecipeList value)? refreshSavedRecipeList,
    TResult? Function(_RefreshCreatedRecipeList value)?
        refreshCreatedRecipeList,
    TResult? Function(_RefreshDraftRecipeList value)? refreshDraftRecipeList,
    TResult? Function(_RefreshRejectedRecipeList value)?
        refreshRejectedRecipeList,
    TResult? Function(_RefreshPendingRecipeList value)?
        refreshPendingRecipeList,
  }) {
    return refreshSavedRecipeList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshSavedRecipeList value)? refreshSavedRecipeList,
    TResult Function(_RefreshCreatedRecipeList value)? refreshCreatedRecipeList,
    TResult Function(_RefreshDraftRecipeList value)? refreshDraftRecipeList,
    TResult Function(_RefreshRejectedRecipeList value)?
        refreshRejectedRecipeList,
    TResult Function(_RefreshPendingRecipeList value)? refreshPendingRecipeList,
    required TResult orElse(),
  }) {
    if (refreshSavedRecipeList != null) {
      return refreshSavedRecipeList(this);
    }
    return orElse();
  }
}

abstract class _RefreshSavedRecipeList implements MyProfilePageEvent {
  const factory _RefreshSavedRecipeList(
          {required final UserAuthenticationState authState}) =
      _$_RefreshSavedRecipeList;

  @override
  UserAuthenticationState get authState;
  @override
  @JsonKey(ignore: true)
  _$$_RefreshSavedRecipeListCopyWith<_$_RefreshSavedRecipeList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshCreatedRecipeListCopyWith<$Res>
    implements $MyProfilePageEventCopyWith<$Res> {
  factory _$$_RefreshCreatedRecipeListCopyWith(
          _$_RefreshCreatedRecipeList value,
          $Res Function(_$_RefreshCreatedRecipeList) then) =
      __$$_RefreshCreatedRecipeListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserAuthenticationState authState});

  @override
  $UserAuthenticationStateCopyWith<$Res> get authState;
}

/// @nodoc
class __$$_RefreshCreatedRecipeListCopyWithImpl<$Res>
    extends _$MyProfilePageEventCopyWithImpl<$Res, _$_RefreshCreatedRecipeList>
    implements _$$_RefreshCreatedRecipeListCopyWith<$Res> {
  __$$_RefreshCreatedRecipeListCopyWithImpl(_$_RefreshCreatedRecipeList _value,
      $Res Function(_$_RefreshCreatedRecipeList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authState = null,
  }) {
    return _then(_$_RefreshCreatedRecipeList(
      authState: null == authState
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as UserAuthenticationState,
    ));
  }
}

/// @nodoc

class _$_RefreshCreatedRecipeList implements _RefreshCreatedRecipeList {
  const _$_RefreshCreatedRecipeList({required this.authState});

  @override
  final UserAuthenticationState authState;

  @override
  String toString() {
    return 'MyProfilePageEvent.refreshCreatedRecipeList(authState: $authState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshCreatedRecipeList &&
            (identical(other.authState, authState) ||
                other.authState == authState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshCreatedRecipeListCopyWith<_$_RefreshCreatedRecipeList>
      get copyWith => __$$_RefreshCreatedRecipeListCopyWithImpl<
          _$_RefreshCreatedRecipeList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuthenticationState authState) started,
    required TResult Function(UserAuthenticationState authState)
        refreshSavedRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshCreatedRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshDraftRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshRejectedRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshPendingRecipeList,
  }) {
    return refreshCreatedRecipeList(authState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState authState)? started,
    TResult? Function(UserAuthenticationState authState)?
        refreshSavedRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshCreatedRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshDraftRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshRejectedRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshPendingRecipeList,
  }) {
    return refreshCreatedRecipeList?.call(authState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState authState)? started,
    TResult Function(UserAuthenticationState authState)? refreshSavedRecipeList,
    TResult Function(UserAuthenticationState authState)?
        refreshCreatedRecipeList,
    TResult Function(UserAuthenticationState authState)? refreshDraftRecipeList,
    TResult Function(UserAuthenticationState authState)?
        refreshRejectedRecipeList,
    TResult Function(UserAuthenticationState authState)?
        refreshPendingRecipeList,
    required TResult orElse(),
  }) {
    if (refreshCreatedRecipeList != null) {
      return refreshCreatedRecipeList(authState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshSavedRecipeList value)
        refreshSavedRecipeList,
    required TResult Function(_RefreshCreatedRecipeList value)
        refreshCreatedRecipeList,
    required TResult Function(_RefreshDraftRecipeList value)
        refreshDraftRecipeList,
    required TResult Function(_RefreshRejectedRecipeList value)
        refreshRejectedRecipeList,
    required TResult Function(_RefreshPendingRecipeList value)
        refreshPendingRecipeList,
  }) {
    return refreshCreatedRecipeList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshSavedRecipeList value)? refreshSavedRecipeList,
    TResult? Function(_RefreshCreatedRecipeList value)?
        refreshCreatedRecipeList,
    TResult? Function(_RefreshDraftRecipeList value)? refreshDraftRecipeList,
    TResult? Function(_RefreshRejectedRecipeList value)?
        refreshRejectedRecipeList,
    TResult? Function(_RefreshPendingRecipeList value)?
        refreshPendingRecipeList,
  }) {
    return refreshCreatedRecipeList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshSavedRecipeList value)? refreshSavedRecipeList,
    TResult Function(_RefreshCreatedRecipeList value)? refreshCreatedRecipeList,
    TResult Function(_RefreshDraftRecipeList value)? refreshDraftRecipeList,
    TResult Function(_RefreshRejectedRecipeList value)?
        refreshRejectedRecipeList,
    TResult Function(_RefreshPendingRecipeList value)? refreshPendingRecipeList,
    required TResult orElse(),
  }) {
    if (refreshCreatedRecipeList != null) {
      return refreshCreatedRecipeList(this);
    }
    return orElse();
  }
}

abstract class _RefreshCreatedRecipeList implements MyProfilePageEvent {
  const factory _RefreshCreatedRecipeList(
          {required final UserAuthenticationState authState}) =
      _$_RefreshCreatedRecipeList;

  @override
  UserAuthenticationState get authState;
  @override
  @JsonKey(ignore: true)
  _$$_RefreshCreatedRecipeListCopyWith<_$_RefreshCreatedRecipeList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshDraftRecipeListCopyWith<$Res>
    implements $MyProfilePageEventCopyWith<$Res> {
  factory _$$_RefreshDraftRecipeListCopyWith(_$_RefreshDraftRecipeList value,
          $Res Function(_$_RefreshDraftRecipeList) then) =
      __$$_RefreshDraftRecipeListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserAuthenticationState authState});

  @override
  $UserAuthenticationStateCopyWith<$Res> get authState;
}

/// @nodoc
class __$$_RefreshDraftRecipeListCopyWithImpl<$Res>
    extends _$MyProfilePageEventCopyWithImpl<$Res, _$_RefreshDraftRecipeList>
    implements _$$_RefreshDraftRecipeListCopyWith<$Res> {
  __$$_RefreshDraftRecipeListCopyWithImpl(_$_RefreshDraftRecipeList _value,
      $Res Function(_$_RefreshDraftRecipeList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authState = null,
  }) {
    return _then(_$_RefreshDraftRecipeList(
      authState: null == authState
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as UserAuthenticationState,
    ));
  }
}

/// @nodoc

class _$_RefreshDraftRecipeList implements _RefreshDraftRecipeList {
  const _$_RefreshDraftRecipeList({required this.authState});

  @override
  final UserAuthenticationState authState;

  @override
  String toString() {
    return 'MyProfilePageEvent.refreshDraftRecipeList(authState: $authState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshDraftRecipeList &&
            (identical(other.authState, authState) ||
                other.authState == authState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshDraftRecipeListCopyWith<_$_RefreshDraftRecipeList> get copyWith =>
      __$$_RefreshDraftRecipeListCopyWithImpl<_$_RefreshDraftRecipeList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuthenticationState authState) started,
    required TResult Function(UserAuthenticationState authState)
        refreshSavedRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshCreatedRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshDraftRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshRejectedRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshPendingRecipeList,
  }) {
    return refreshDraftRecipeList(authState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState authState)? started,
    TResult? Function(UserAuthenticationState authState)?
        refreshSavedRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshCreatedRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshDraftRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshRejectedRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshPendingRecipeList,
  }) {
    return refreshDraftRecipeList?.call(authState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState authState)? started,
    TResult Function(UserAuthenticationState authState)? refreshSavedRecipeList,
    TResult Function(UserAuthenticationState authState)?
        refreshCreatedRecipeList,
    TResult Function(UserAuthenticationState authState)? refreshDraftRecipeList,
    TResult Function(UserAuthenticationState authState)?
        refreshRejectedRecipeList,
    TResult Function(UserAuthenticationState authState)?
        refreshPendingRecipeList,
    required TResult orElse(),
  }) {
    if (refreshDraftRecipeList != null) {
      return refreshDraftRecipeList(authState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshSavedRecipeList value)
        refreshSavedRecipeList,
    required TResult Function(_RefreshCreatedRecipeList value)
        refreshCreatedRecipeList,
    required TResult Function(_RefreshDraftRecipeList value)
        refreshDraftRecipeList,
    required TResult Function(_RefreshRejectedRecipeList value)
        refreshRejectedRecipeList,
    required TResult Function(_RefreshPendingRecipeList value)
        refreshPendingRecipeList,
  }) {
    return refreshDraftRecipeList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshSavedRecipeList value)? refreshSavedRecipeList,
    TResult? Function(_RefreshCreatedRecipeList value)?
        refreshCreatedRecipeList,
    TResult? Function(_RefreshDraftRecipeList value)? refreshDraftRecipeList,
    TResult? Function(_RefreshRejectedRecipeList value)?
        refreshRejectedRecipeList,
    TResult? Function(_RefreshPendingRecipeList value)?
        refreshPendingRecipeList,
  }) {
    return refreshDraftRecipeList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshSavedRecipeList value)? refreshSavedRecipeList,
    TResult Function(_RefreshCreatedRecipeList value)? refreshCreatedRecipeList,
    TResult Function(_RefreshDraftRecipeList value)? refreshDraftRecipeList,
    TResult Function(_RefreshRejectedRecipeList value)?
        refreshRejectedRecipeList,
    TResult Function(_RefreshPendingRecipeList value)? refreshPendingRecipeList,
    required TResult orElse(),
  }) {
    if (refreshDraftRecipeList != null) {
      return refreshDraftRecipeList(this);
    }
    return orElse();
  }
}

abstract class _RefreshDraftRecipeList implements MyProfilePageEvent {
  const factory _RefreshDraftRecipeList(
          {required final UserAuthenticationState authState}) =
      _$_RefreshDraftRecipeList;

  @override
  UserAuthenticationState get authState;
  @override
  @JsonKey(ignore: true)
  _$$_RefreshDraftRecipeListCopyWith<_$_RefreshDraftRecipeList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshRejectedRecipeListCopyWith<$Res>
    implements $MyProfilePageEventCopyWith<$Res> {
  factory _$$_RefreshRejectedRecipeListCopyWith(
          _$_RefreshRejectedRecipeList value,
          $Res Function(_$_RefreshRejectedRecipeList) then) =
      __$$_RefreshRejectedRecipeListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserAuthenticationState authState});

  @override
  $UserAuthenticationStateCopyWith<$Res> get authState;
}

/// @nodoc
class __$$_RefreshRejectedRecipeListCopyWithImpl<$Res>
    extends _$MyProfilePageEventCopyWithImpl<$Res, _$_RefreshRejectedRecipeList>
    implements _$$_RefreshRejectedRecipeListCopyWith<$Res> {
  __$$_RefreshRejectedRecipeListCopyWithImpl(
      _$_RefreshRejectedRecipeList _value,
      $Res Function(_$_RefreshRejectedRecipeList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authState = null,
  }) {
    return _then(_$_RefreshRejectedRecipeList(
      authState: null == authState
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as UserAuthenticationState,
    ));
  }
}

/// @nodoc

class _$_RefreshRejectedRecipeList implements _RefreshRejectedRecipeList {
  const _$_RefreshRejectedRecipeList({required this.authState});

  @override
  final UserAuthenticationState authState;

  @override
  String toString() {
    return 'MyProfilePageEvent.refreshRejectedRecipeList(authState: $authState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshRejectedRecipeList &&
            (identical(other.authState, authState) ||
                other.authState == authState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshRejectedRecipeListCopyWith<_$_RefreshRejectedRecipeList>
      get copyWith => __$$_RefreshRejectedRecipeListCopyWithImpl<
          _$_RefreshRejectedRecipeList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuthenticationState authState) started,
    required TResult Function(UserAuthenticationState authState)
        refreshSavedRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshCreatedRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshDraftRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshRejectedRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshPendingRecipeList,
  }) {
    return refreshRejectedRecipeList(authState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState authState)? started,
    TResult? Function(UserAuthenticationState authState)?
        refreshSavedRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshCreatedRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshDraftRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshRejectedRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshPendingRecipeList,
  }) {
    return refreshRejectedRecipeList?.call(authState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState authState)? started,
    TResult Function(UserAuthenticationState authState)? refreshSavedRecipeList,
    TResult Function(UserAuthenticationState authState)?
        refreshCreatedRecipeList,
    TResult Function(UserAuthenticationState authState)? refreshDraftRecipeList,
    TResult Function(UserAuthenticationState authState)?
        refreshRejectedRecipeList,
    TResult Function(UserAuthenticationState authState)?
        refreshPendingRecipeList,
    required TResult orElse(),
  }) {
    if (refreshRejectedRecipeList != null) {
      return refreshRejectedRecipeList(authState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshSavedRecipeList value)
        refreshSavedRecipeList,
    required TResult Function(_RefreshCreatedRecipeList value)
        refreshCreatedRecipeList,
    required TResult Function(_RefreshDraftRecipeList value)
        refreshDraftRecipeList,
    required TResult Function(_RefreshRejectedRecipeList value)
        refreshRejectedRecipeList,
    required TResult Function(_RefreshPendingRecipeList value)
        refreshPendingRecipeList,
  }) {
    return refreshRejectedRecipeList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshSavedRecipeList value)? refreshSavedRecipeList,
    TResult? Function(_RefreshCreatedRecipeList value)?
        refreshCreatedRecipeList,
    TResult? Function(_RefreshDraftRecipeList value)? refreshDraftRecipeList,
    TResult? Function(_RefreshRejectedRecipeList value)?
        refreshRejectedRecipeList,
    TResult? Function(_RefreshPendingRecipeList value)?
        refreshPendingRecipeList,
  }) {
    return refreshRejectedRecipeList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshSavedRecipeList value)? refreshSavedRecipeList,
    TResult Function(_RefreshCreatedRecipeList value)? refreshCreatedRecipeList,
    TResult Function(_RefreshDraftRecipeList value)? refreshDraftRecipeList,
    TResult Function(_RefreshRejectedRecipeList value)?
        refreshRejectedRecipeList,
    TResult Function(_RefreshPendingRecipeList value)? refreshPendingRecipeList,
    required TResult orElse(),
  }) {
    if (refreshRejectedRecipeList != null) {
      return refreshRejectedRecipeList(this);
    }
    return orElse();
  }
}

abstract class _RefreshRejectedRecipeList implements MyProfilePageEvent {
  const factory _RefreshRejectedRecipeList(
          {required final UserAuthenticationState authState}) =
      _$_RefreshRejectedRecipeList;

  @override
  UserAuthenticationState get authState;
  @override
  @JsonKey(ignore: true)
  _$$_RefreshRejectedRecipeListCopyWith<_$_RefreshRejectedRecipeList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshPendingRecipeListCopyWith<$Res>
    implements $MyProfilePageEventCopyWith<$Res> {
  factory _$$_RefreshPendingRecipeListCopyWith(
          _$_RefreshPendingRecipeList value,
          $Res Function(_$_RefreshPendingRecipeList) then) =
      __$$_RefreshPendingRecipeListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserAuthenticationState authState});

  @override
  $UserAuthenticationStateCopyWith<$Res> get authState;
}

/// @nodoc
class __$$_RefreshPendingRecipeListCopyWithImpl<$Res>
    extends _$MyProfilePageEventCopyWithImpl<$Res, _$_RefreshPendingRecipeList>
    implements _$$_RefreshPendingRecipeListCopyWith<$Res> {
  __$$_RefreshPendingRecipeListCopyWithImpl(_$_RefreshPendingRecipeList _value,
      $Res Function(_$_RefreshPendingRecipeList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authState = null,
  }) {
    return _then(_$_RefreshPendingRecipeList(
      authState: null == authState
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as UserAuthenticationState,
    ));
  }
}

/// @nodoc

class _$_RefreshPendingRecipeList implements _RefreshPendingRecipeList {
  const _$_RefreshPendingRecipeList({required this.authState});

  @override
  final UserAuthenticationState authState;

  @override
  String toString() {
    return 'MyProfilePageEvent.refreshPendingRecipeList(authState: $authState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshPendingRecipeList &&
            (identical(other.authState, authState) ||
                other.authState == authState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshPendingRecipeListCopyWith<_$_RefreshPendingRecipeList>
      get copyWith => __$$_RefreshPendingRecipeListCopyWithImpl<
          _$_RefreshPendingRecipeList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuthenticationState authState) started,
    required TResult Function(UserAuthenticationState authState)
        refreshSavedRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshCreatedRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshDraftRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshRejectedRecipeList,
    required TResult Function(UserAuthenticationState authState)
        refreshPendingRecipeList,
  }) {
    return refreshPendingRecipeList(authState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState authState)? started,
    TResult? Function(UserAuthenticationState authState)?
        refreshSavedRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshCreatedRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshDraftRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshRejectedRecipeList,
    TResult? Function(UserAuthenticationState authState)?
        refreshPendingRecipeList,
  }) {
    return refreshPendingRecipeList?.call(authState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState authState)? started,
    TResult Function(UserAuthenticationState authState)? refreshSavedRecipeList,
    TResult Function(UserAuthenticationState authState)?
        refreshCreatedRecipeList,
    TResult Function(UserAuthenticationState authState)? refreshDraftRecipeList,
    TResult Function(UserAuthenticationState authState)?
        refreshRejectedRecipeList,
    TResult Function(UserAuthenticationState authState)?
        refreshPendingRecipeList,
    required TResult orElse(),
  }) {
    if (refreshPendingRecipeList != null) {
      return refreshPendingRecipeList(authState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshSavedRecipeList value)
        refreshSavedRecipeList,
    required TResult Function(_RefreshCreatedRecipeList value)
        refreshCreatedRecipeList,
    required TResult Function(_RefreshDraftRecipeList value)
        refreshDraftRecipeList,
    required TResult Function(_RefreshRejectedRecipeList value)
        refreshRejectedRecipeList,
    required TResult Function(_RefreshPendingRecipeList value)
        refreshPendingRecipeList,
  }) {
    return refreshPendingRecipeList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshSavedRecipeList value)? refreshSavedRecipeList,
    TResult? Function(_RefreshCreatedRecipeList value)?
        refreshCreatedRecipeList,
    TResult? Function(_RefreshDraftRecipeList value)? refreshDraftRecipeList,
    TResult? Function(_RefreshRejectedRecipeList value)?
        refreshRejectedRecipeList,
    TResult? Function(_RefreshPendingRecipeList value)?
        refreshPendingRecipeList,
  }) {
    return refreshPendingRecipeList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshSavedRecipeList value)? refreshSavedRecipeList,
    TResult Function(_RefreshCreatedRecipeList value)? refreshCreatedRecipeList,
    TResult Function(_RefreshDraftRecipeList value)? refreshDraftRecipeList,
    TResult Function(_RefreshRejectedRecipeList value)?
        refreshRejectedRecipeList,
    TResult Function(_RefreshPendingRecipeList value)? refreshPendingRecipeList,
    required TResult orElse(),
  }) {
    if (refreshPendingRecipeList != null) {
      return refreshPendingRecipeList(this);
    }
    return orElse();
  }
}

abstract class _RefreshPendingRecipeList implements MyProfilePageEvent {
  const factory _RefreshPendingRecipeList(
          {required final UserAuthenticationState authState}) =
      _$_RefreshPendingRecipeList;

  @override
  UserAuthenticationState get authState;
  @override
  @JsonKey(ignore: true)
  _$$_RefreshPendingRecipeListCopyWith<_$_RefreshPendingRecipeList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MyProfilePageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            UserDetail user,
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
            UserDetail user,
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
            UserDetail user,
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
            UserDetail user,
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
            UserDetail user,
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
            UserDetail user,
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
      {UserDetail user,
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
    Object? user = null,
    Object? savedListResult = null,
    Object? createdListResult = null,
    Object? draftListResult = null,
    Object? rejectedListResult = null,
    Object? pendingListResult = null,
  }) {
    return _then(_$_Loaded(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDetail,
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
      {required this.user,
      required this.savedListResult,
      required this.createdListResult,
      required this.draftListResult,
      required this.rejectedListResult,
      required this.pendingListResult});

  @override
  final UserDetail user;
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
    return 'MyProfilePageState.loaded(user: $user, savedListResult: $savedListResult, createdListResult: $createdListResult, draftListResult: $draftListResult, rejectedListResult: $rejectedListResult, pendingListResult: $pendingListResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.user, user) || other.user == user) &&
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
      user,
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
            UserDetail user,
            ApiResult<List<Recipe?>> savedListResult,
            ApiResult<List<Recipe?>> createdListResult,
            ApiResult<List<Recipe?>> draftListResult,
            ApiResult<List<Recipe?>> rejectedListResult,
            ApiResult<List<Recipe?>> pendingListResult)
        loaded,
    required TResult Function(String message) failed,
  }) {
    return loaded(user, savedListResult, createdListResult, draftListResult,
        rejectedListResult, pendingListResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            UserDetail user,
            ApiResult<List<Recipe?>> savedListResult,
            ApiResult<List<Recipe?>> createdListResult,
            ApiResult<List<Recipe?>> draftListResult,
            ApiResult<List<Recipe?>> rejectedListResult,
            ApiResult<List<Recipe?>> pendingListResult)?
        loaded,
    TResult? Function(String message)? failed,
  }) {
    return loaded?.call(user, savedListResult, createdListResult,
        draftListResult, rejectedListResult, pendingListResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            UserDetail user,
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
      return loaded(user, savedListResult, createdListResult, draftListResult,
          rejectedListResult, pendingListResult);
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
      {required final UserDetail user,
      required final ApiResult<List<Recipe?>> savedListResult,
      required final ApiResult<List<Recipe?>> createdListResult,
      required final ApiResult<List<Recipe?>> draftListResult,
      required final ApiResult<List<Recipe?>> rejectedListResult,
      required final ApiResult<List<Recipe?>> pendingListResult}) = _$_Loaded;

  UserDetail get user;
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
            UserDetail user,
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
            UserDetail user,
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
            UserDetail user,
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
