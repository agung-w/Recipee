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
    required TResult Function(int recipeId, bool? isSaved) changeSaveStatus,
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
    TResult? Function(int recipeId, bool? isSaved)? changeSaveStatus,
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
    TResult Function(int recipeId, bool? isSaved)? changeSaveStatus,
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
    required TResult Function(_ChangeSaveStatus value) changeSaveStatus,
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
    TResult? Function(_ChangeSaveStatus value)? changeSaveStatus,
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
    TResult Function(_ChangeSaveStatus value)? changeSaveStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyProfilePageEventCopyWith<$Res> {
  factory $MyProfilePageEventCopyWith(
          MyProfilePageEvent value, $Res Function(MyProfilePageEvent) then) =
      _$MyProfilePageEventCopyWithImpl<$Res, MyProfilePageEvent>;
}

/// @nodoc
class _$MyProfilePageEventCopyWithImpl<$Res, $Val extends MyProfilePageEvent>
    implements $MyProfilePageEventCopyWith<$Res> {
  _$MyProfilePageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @useResult
  $Res call({UserAuthenticationState authState});

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

  @override
  @pragma('vm:prefer-inline')
  $UserAuthenticationStateCopyWith<$Res> get authState {
    return $UserAuthenticationStateCopyWith<$Res>(_value.authState, (value) {
      return _then(_value.copyWith(authState: value));
    });
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
    required TResult Function(int recipeId, bool? isSaved) changeSaveStatus,
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
    TResult? Function(int recipeId, bool? isSaved)? changeSaveStatus,
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
    TResult Function(int recipeId, bool? isSaved)? changeSaveStatus,
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
    required TResult Function(_ChangeSaveStatus value) changeSaveStatus,
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
    TResult? Function(_ChangeSaveStatus value)? changeSaveStatus,
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
    TResult Function(_ChangeSaveStatus value)? changeSaveStatus,
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

  UserAuthenticationState get authState;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshSavedRecipeListCopyWith<$Res> {
  factory _$$_RefreshSavedRecipeListCopyWith(_$_RefreshSavedRecipeList value,
          $Res Function(_$_RefreshSavedRecipeList) then) =
      __$$_RefreshSavedRecipeListCopyWithImpl<$Res>;
  @useResult
  $Res call({UserAuthenticationState authState});

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

  @override
  @pragma('vm:prefer-inline')
  $UserAuthenticationStateCopyWith<$Res> get authState {
    return $UserAuthenticationStateCopyWith<$Res>(_value.authState, (value) {
      return _then(_value.copyWith(authState: value));
    });
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
    required TResult Function(int recipeId, bool? isSaved) changeSaveStatus,
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
    TResult? Function(int recipeId, bool? isSaved)? changeSaveStatus,
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
    TResult Function(int recipeId, bool? isSaved)? changeSaveStatus,
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
    required TResult Function(_ChangeSaveStatus value) changeSaveStatus,
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
    TResult? Function(_ChangeSaveStatus value)? changeSaveStatus,
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
    TResult Function(_ChangeSaveStatus value)? changeSaveStatus,
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

  UserAuthenticationState get authState;
  @JsonKey(ignore: true)
  _$$_RefreshSavedRecipeListCopyWith<_$_RefreshSavedRecipeList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshCreatedRecipeListCopyWith<$Res> {
  factory _$$_RefreshCreatedRecipeListCopyWith(
          _$_RefreshCreatedRecipeList value,
          $Res Function(_$_RefreshCreatedRecipeList) then) =
      __$$_RefreshCreatedRecipeListCopyWithImpl<$Res>;
  @useResult
  $Res call({UserAuthenticationState authState});

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

  @override
  @pragma('vm:prefer-inline')
  $UserAuthenticationStateCopyWith<$Res> get authState {
    return $UserAuthenticationStateCopyWith<$Res>(_value.authState, (value) {
      return _then(_value.copyWith(authState: value));
    });
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
    required TResult Function(int recipeId, bool? isSaved) changeSaveStatus,
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
    TResult? Function(int recipeId, bool? isSaved)? changeSaveStatus,
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
    TResult Function(int recipeId, bool? isSaved)? changeSaveStatus,
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
    required TResult Function(_ChangeSaveStatus value) changeSaveStatus,
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
    TResult? Function(_ChangeSaveStatus value)? changeSaveStatus,
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
    TResult Function(_ChangeSaveStatus value)? changeSaveStatus,
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

  UserAuthenticationState get authState;
  @JsonKey(ignore: true)
  _$$_RefreshCreatedRecipeListCopyWith<_$_RefreshCreatedRecipeList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshDraftRecipeListCopyWith<$Res> {
  factory _$$_RefreshDraftRecipeListCopyWith(_$_RefreshDraftRecipeList value,
          $Res Function(_$_RefreshDraftRecipeList) then) =
      __$$_RefreshDraftRecipeListCopyWithImpl<$Res>;
  @useResult
  $Res call({UserAuthenticationState authState});

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

  @override
  @pragma('vm:prefer-inline')
  $UserAuthenticationStateCopyWith<$Res> get authState {
    return $UserAuthenticationStateCopyWith<$Res>(_value.authState, (value) {
      return _then(_value.copyWith(authState: value));
    });
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
    required TResult Function(int recipeId, bool? isSaved) changeSaveStatus,
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
    TResult? Function(int recipeId, bool? isSaved)? changeSaveStatus,
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
    TResult Function(int recipeId, bool? isSaved)? changeSaveStatus,
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
    required TResult Function(_ChangeSaveStatus value) changeSaveStatus,
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
    TResult? Function(_ChangeSaveStatus value)? changeSaveStatus,
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
    TResult Function(_ChangeSaveStatus value)? changeSaveStatus,
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

  UserAuthenticationState get authState;
  @JsonKey(ignore: true)
  _$$_RefreshDraftRecipeListCopyWith<_$_RefreshDraftRecipeList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshRejectedRecipeListCopyWith<$Res> {
  factory _$$_RefreshRejectedRecipeListCopyWith(
          _$_RefreshRejectedRecipeList value,
          $Res Function(_$_RefreshRejectedRecipeList) then) =
      __$$_RefreshRejectedRecipeListCopyWithImpl<$Res>;
  @useResult
  $Res call({UserAuthenticationState authState});

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

  @override
  @pragma('vm:prefer-inline')
  $UserAuthenticationStateCopyWith<$Res> get authState {
    return $UserAuthenticationStateCopyWith<$Res>(_value.authState, (value) {
      return _then(_value.copyWith(authState: value));
    });
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
    required TResult Function(int recipeId, bool? isSaved) changeSaveStatus,
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
    TResult? Function(int recipeId, bool? isSaved)? changeSaveStatus,
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
    TResult Function(int recipeId, bool? isSaved)? changeSaveStatus,
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
    required TResult Function(_ChangeSaveStatus value) changeSaveStatus,
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
    TResult? Function(_ChangeSaveStatus value)? changeSaveStatus,
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
    TResult Function(_ChangeSaveStatus value)? changeSaveStatus,
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

  UserAuthenticationState get authState;
  @JsonKey(ignore: true)
  _$$_RefreshRejectedRecipeListCopyWith<_$_RefreshRejectedRecipeList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshPendingRecipeListCopyWith<$Res> {
  factory _$$_RefreshPendingRecipeListCopyWith(
          _$_RefreshPendingRecipeList value,
          $Res Function(_$_RefreshPendingRecipeList) then) =
      __$$_RefreshPendingRecipeListCopyWithImpl<$Res>;
  @useResult
  $Res call({UserAuthenticationState authState});

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

  @override
  @pragma('vm:prefer-inline')
  $UserAuthenticationStateCopyWith<$Res> get authState {
    return $UserAuthenticationStateCopyWith<$Res>(_value.authState, (value) {
      return _then(_value.copyWith(authState: value));
    });
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
    required TResult Function(int recipeId, bool? isSaved) changeSaveStatus,
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
    TResult? Function(int recipeId, bool? isSaved)? changeSaveStatus,
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
    TResult Function(int recipeId, bool? isSaved)? changeSaveStatus,
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
    required TResult Function(_ChangeSaveStatus value) changeSaveStatus,
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
    TResult? Function(_ChangeSaveStatus value)? changeSaveStatus,
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
    TResult Function(_ChangeSaveStatus value)? changeSaveStatus,
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

  UserAuthenticationState get authState;
  @JsonKey(ignore: true)
  _$$_RefreshPendingRecipeListCopyWith<_$_RefreshPendingRecipeList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeSaveStatusCopyWith<$Res> {
  factory _$$_ChangeSaveStatusCopyWith(
          _$_ChangeSaveStatus value, $Res Function(_$_ChangeSaveStatus) then) =
      __$$_ChangeSaveStatusCopyWithImpl<$Res>;
  @useResult
  $Res call({int recipeId, bool? isSaved});
}

/// @nodoc
class __$$_ChangeSaveStatusCopyWithImpl<$Res>
    extends _$MyProfilePageEventCopyWithImpl<$Res, _$_ChangeSaveStatus>
    implements _$$_ChangeSaveStatusCopyWith<$Res> {
  __$$_ChangeSaveStatusCopyWithImpl(
      _$_ChangeSaveStatus _value, $Res Function(_$_ChangeSaveStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
    Object? isSaved = freezed,
  }) {
    return _then(_$_ChangeSaveStatus(
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int,
      isSaved: freezed == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_ChangeSaveStatus implements _ChangeSaveStatus {
  const _$_ChangeSaveStatus({required this.recipeId, required this.isSaved});

  @override
  final int recipeId;
  @override
  final bool? isSaved;

  @override
  String toString() {
    return 'MyProfilePageEvent.changeSaveStatus(recipeId: $recipeId, isSaved: $isSaved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeSaveStatus &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeId, isSaved);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeSaveStatusCopyWith<_$_ChangeSaveStatus> get copyWith =>
      __$$_ChangeSaveStatusCopyWithImpl<_$_ChangeSaveStatus>(this, _$identity);

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
    required TResult Function(int recipeId, bool? isSaved) changeSaveStatus,
  }) {
    return changeSaveStatus(recipeId, isSaved);
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
    TResult? Function(int recipeId, bool? isSaved)? changeSaveStatus,
  }) {
    return changeSaveStatus?.call(recipeId, isSaved);
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
    TResult Function(int recipeId, bool? isSaved)? changeSaveStatus,
    required TResult orElse(),
  }) {
    if (changeSaveStatus != null) {
      return changeSaveStatus(recipeId, isSaved);
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
    required TResult Function(_ChangeSaveStatus value) changeSaveStatus,
  }) {
    return changeSaveStatus(this);
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
    TResult? Function(_ChangeSaveStatus value)? changeSaveStatus,
  }) {
    return changeSaveStatus?.call(this);
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
    TResult Function(_ChangeSaveStatus value)? changeSaveStatus,
    required TResult orElse(),
  }) {
    if (changeSaveStatus != null) {
      return changeSaveStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeSaveStatus implements MyProfilePageEvent {
  const factory _ChangeSaveStatus(
      {required final int recipeId,
      required final bool? isSaved}) = _$_ChangeSaveStatus;

  int get recipeId;
  bool? get isSaved;
  @JsonKey(ignore: true)
  _$$_ChangeSaveStatusCopyWith<_$_ChangeSaveStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MyProfilePageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            UserDetail user,
            List<Recipe> savedList,
            List<Recipe> createdList,
            List<Recipe> draftList,
            List<Recipe> rejectedList,
            List<Recipe> pendingList,
            String? savedListError,
            String? createdListError,
            String? draftListError,
            String? rejectedListError,
            String? pendingListError,
            bool? isSavedListLoading,
            bool? isCreatedListLoading,
            bool? isDraftListLoading,
            bool? isRejectedListLoading,
            bool? isPendingListLoading)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            UserDetail user,
            List<Recipe> savedList,
            List<Recipe> createdList,
            List<Recipe> draftList,
            List<Recipe> rejectedList,
            List<Recipe> pendingList,
            String? savedListError,
            String? createdListError,
            String? draftListError,
            String? rejectedListError,
            String? pendingListError,
            bool? isSavedListLoading,
            bool? isCreatedListLoading,
            bool? isDraftListLoading,
            bool? isRejectedListLoading,
            bool? isPendingListLoading)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            UserDetail user,
            List<Recipe> savedList,
            List<Recipe> createdList,
            List<Recipe> draftList,
            List<Recipe> rejectedList,
            List<Recipe> pendingList,
            String? savedListError,
            String? createdListError,
            String? draftListError,
            String? rejectedListError,
            String? pendingListError,
            bool? isSavedListLoading,
            bool? isCreatedListLoading,
            bool? isDraftListLoading,
            bool? isRejectedListLoading,
            bool? isPendingListLoading)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
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
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$MyProfilePageStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MyProfilePageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            UserDetail user,
            List<Recipe> savedList,
            List<Recipe> createdList,
            List<Recipe> draftList,
            List<Recipe> rejectedList,
            List<Recipe> pendingList,
            String? savedListError,
            String? createdListError,
            String? draftListError,
            String? rejectedListError,
            String? pendingListError,
            bool? isSavedListLoading,
            bool? isCreatedListLoading,
            bool? isDraftListLoading,
            bool? isRejectedListLoading,
            bool? isPendingListLoading)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            UserDetail user,
            List<Recipe> savedList,
            List<Recipe> createdList,
            List<Recipe> draftList,
            List<Recipe> rejectedList,
            List<Recipe> pendingList,
            String? savedListError,
            String? createdListError,
            String? draftListError,
            String? rejectedListError,
            String? pendingListError,
            bool? isSavedListLoading,
            bool? isCreatedListLoading,
            bool? isDraftListLoading,
            bool? isRejectedListLoading,
            bool? isPendingListLoading)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            UserDetail user,
            List<Recipe> savedList,
            List<Recipe> createdList,
            List<Recipe> draftList,
            List<Recipe> rejectedList,
            List<Recipe> pendingList,
            String? savedListError,
            String? createdListError,
            String? draftListError,
            String? rejectedListError,
            String? pendingListError,
            bool? isSavedListLoading,
            bool? isCreatedListLoading,
            bool? isDraftListLoading,
            bool? isRejectedListLoading,
            bool? isPendingListLoading)?
        loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MyProfilePageState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {UserDetail user,
      List<Recipe> savedList,
      List<Recipe> createdList,
      List<Recipe> draftList,
      List<Recipe> rejectedList,
      List<Recipe> pendingList,
      String? savedListError,
      String? createdListError,
      String? draftListError,
      String? rejectedListError,
      String? pendingListError,
      bool? isSavedListLoading,
      bool? isCreatedListLoading,
      bool? isDraftListLoading,
      bool? isRejectedListLoading,
      bool? isPendingListLoading});
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
    Object? savedList = null,
    Object? createdList = null,
    Object? draftList = null,
    Object? rejectedList = null,
    Object? pendingList = null,
    Object? savedListError = freezed,
    Object? createdListError = freezed,
    Object? draftListError = freezed,
    Object? rejectedListError = freezed,
    Object? pendingListError = freezed,
    Object? isSavedListLoading = freezed,
    Object? isCreatedListLoading = freezed,
    Object? isDraftListLoading = freezed,
    Object? isRejectedListLoading = freezed,
    Object? isPendingListLoading = freezed,
  }) {
    return _then(_$_Loaded(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDetail,
      savedList: null == savedList
          ? _value._savedList
          : savedList // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      createdList: null == createdList
          ? _value._createdList
          : createdList // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      draftList: null == draftList
          ? _value._draftList
          : draftList // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      rejectedList: null == rejectedList
          ? _value._rejectedList
          : rejectedList // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      pendingList: null == pendingList
          ? _value._pendingList
          : pendingList // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      savedListError: freezed == savedListError
          ? _value.savedListError
          : savedListError // ignore: cast_nullable_to_non_nullable
              as String?,
      createdListError: freezed == createdListError
          ? _value.createdListError
          : createdListError // ignore: cast_nullable_to_non_nullable
              as String?,
      draftListError: freezed == draftListError
          ? _value.draftListError
          : draftListError // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedListError: freezed == rejectedListError
          ? _value.rejectedListError
          : rejectedListError // ignore: cast_nullable_to_non_nullable
              as String?,
      pendingListError: freezed == pendingListError
          ? _value.pendingListError
          : pendingListError // ignore: cast_nullable_to_non_nullable
              as String?,
      isSavedListLoading: freezed == isSavedListLoading
          ? _value.isSavedListLoading
          : isSavedListLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCreatedListLoading: freezed == isCreatedListLoading
          ? _value.isCreatedListLoading
          : isCreatedListLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDraftListLoading: freezed == isDraftListLoading
          ? _value.isDraftListLoading
          : isDraftListLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRejectedListLoading: freezed == isRejectedListLoading
          ? _value.isRejectedListLoading
          : isRejectedListLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPendingListLoading: freezed == isPendingListLoading
          ? _value.isPendingListLoading
          : isPendingListLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required this.user,
      required final List<Recipe> savedList,
      required final List<Recipe> createdList,
      required final List<Recipe> draftList,
      required final List<Recipe> rejectedList,
      required final List<Recipe> pendingList,
      this.savedListError,
      this.createdListError,
      this.draftListError,
      this.rejectedListError,
      this.pendingListError,
      this.isSavedListLoading,
      this.isCreatedListLoading,
      this.isDraftListLoading,
      this.isRejectedListLoading,
      this.isPendingListLoading})
      : _savedList = savedList,
        _createdList = createdList,
        _draftList = draftList,
        _rejectedList = rejectedList,
        _pendingList = pendingList;

  @override
  final UserDetail user;
  final List<Recipe> _savedList;
  @override
  List<Recipe> get savedList {
    if (_savedList is EqualUnmodifiableListView) return _savedList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_savedList);
  }

  final List<Recipe> _createdList;
  @override
  List<Recipe> get createdList {
    if (_createdList is EqualUnmodifiableListView) return _createdList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_createdList);
  }

  final List<Recipe> _draftList;
  @override
  List<Recipe> get draftList {
    if (_draftList is EqualUnmodifiableListView) return _draftList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_draftList);
  }

  final List<Recipe> _rejectedList;
  @override
  List<Recipe> get rejectedList {
    if (_rejectedList is EqualUnmodifiableListView) return _rejectedList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rejectedList);
  }

  final List<Recipe> _pendingList;
  @override
  List<Recipe> get pendingList {
    if (_pendingList is EqualUnmodifiableListView) return _pendingList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pendingList);
  }

  @override
  final String? savedListError;
  @override
  final String? createdListError;
  @override
  final String? draftListError;
  @override
  final String? rejectedListError;
  @override
  final String? pendingListError;
  @override
  final bool? isSavedListLoading;
  @override
  final bool? isCreatedListLoading;
  @override
  final bool? isDraftListLoading;
  @override
  final bool? isRejectedListLoading;
  @override
  final bool? isPendingListLoading;

  @override
  String toString() {
    return 'MyProfilePageState.loaded(user: $user, savedList: $savedList, createdList: $createdList, draftList: $draftList, rejectedList: $rejectedList, pendingList: $pendingList, savedListError: $savedListError, createdListError: $createdListError, draftListError: $draftListError, rejectedListError: $rejectedListError, pendingListError: $pendingListError, isSavedListLoading: $isSavedListLoading, isCreatedListLoading: $isCreatedListLoading, isDraftListLoading: $isDraftListLoading, isRejectedListLoading: $isRejectedListLoading, isPendingListLoading: $isPendingListLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._savedList, _savedList) &&
            const DeepCollectionEquality()
                .equals(other._createdList, _createdList) &&
            const DeepCollectionEquality()
                .equals(other._draftList, _draftList) &&
            const DeepCollectionEquality()
                .equals(other._rejectedList, _rejectedList) &&
            const DeepCollectionEquality()
                .equals(other._pendingList, _pendingList) &&
            (identical(other.savedListError, savedListError) ||
                other.savedListError == savedListError) &&
            (identical(other.createdListError, createdListError) ||
                other.createdListError == createdListError) &&
            (identical(other.draftListError, draftListError) ||
                other.draftListError == draftListError) &&
            (identical(other.rejectedListError, rejectedListError) ||
                other.rejectedListError == rejectedListError) &&
            (identical(other.pendingListError, pendingListError) ||
                other.pendingListError == pendingListError) &&
            (identical(other.isSavedListLoading, isSavedListLoading) ||
                other.isSavedListLoading == isSavedListLoading) &&
            (identical(other.isCreatedListLoading, isCreatedListLoading) ||
                other.isCreatedListLoading == isCreatedListLoading) &&
            (identical(other.isDraftListLoading, isDraftListLoading) ||
                other.isDraftListLoading == isDraftListLoading) &&
            (identical(other.isRejectedListLoading, isRejectedListLoading) ||
                other.isRejectedListLoading == isRejectedListLoading) &&
            (identical(other.isPendingListLoading, isPendingListLoading) ||
                other.isPendingListLoading == isPendingListLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      const DeepCollectionEquality().hash(_savedList),
      const DeepCollectionEquality().hash(_createdList),
      const DeepCollectionEquality().hash(_draftList),
      const DeepCollectionEquality().hash(_rejectedList),
      const DeepCollectionEquality().hash(_pendingList),
      savedListError,
      createdListError,
      draftListError,
      rejectedListError,
      pendingListError,
      isSavedListLoading,
      isCreatedListLoading,
      isDraftListLoading,
      isRejectedListLoading,
      isPendingListLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            UserDetail user,
            List<Recipe> savedList,
            List<Recipe> createdList,
            List<Recipe> draftList,
            List<Recipe> rejectedList,
            List<Recipe> pendingList,
            String? savedListError,
            String? createdListError,
            String? draftListError,
            String? rejectedListError,
            String? pendingListError,
            bool? isSavedListLoading,
            bool? isCreatedListLoading,
            bool? isDraftListLoading,
            bool? isRejectedListLoading,
            bool? isPendingListLoading)
        loaded,
  }) {
    return loaded(
        user,
        savedList,
        createdList,
        draftList,
        rejectedList,
        pendingList,
        savedListError,
        createdListError,
        draftListError,
        rejectedListError,
        pendingListError,
        isSavedListLoading,
        isCreatedListLoading,
        isDraftListLoading,
        isRejectedListLoading,
        isPendingListLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            UserDetail user,
            List<Recipe> savedList,
            List<Recipe> createdList,
            List<Recipe> draftList,
            List<Recipe> rejectedList,
            List<Recipe> pendingList,
            String? savedListError,
            String? createdListError,
            String? draftListError,
            String? rejectedListError,
            String? pendingListError,
            bool? isSavedListLoading,
            bool? isCreatedListLoading,
            bool? isDraftListLoading,
            bool? isRejectedListLoading,
            bool? isPendingListLoading)?
        loaded,
  }) {
    return loaded?.call(
        user,
        savedList,
        createdList,
        draftList,
        rejectedList,
        pendingList,
        savedListError,
        createdListError,
        draftListError,
        rejectedListError,
        pendingListError,
        isSavedListLoading,
        isCreatedListLoading,
        isDraftListLoading,
        isRejectedListLoading,
        isPendingListLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            UserDetail user,
            List<Recipe> savedList,
            List<Recipe> createdList,
            List<Recipe> draftList,
            List<Recipe> rejectedList,
            List<Recipe> pendingList,
            String? savedListError,
            String? createdListError,
            String? draftListError,
            String? rejectedListError,
            String? pendingListError,
            bool? isSavedListLoading,
            bool? isCreatedListLoading,
            bool? isDraftListLoading,
            bool? isRejectedListLoading,
            bool? isPendingListLoading)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          user,
          savedList,
          createdList,
          draftList,
          rejectedList,
          pendingList,
          savedListError,
          createdListError,
          draftListError,
          rejectedListError,
          pendingListError,
          isSavedListLoading,
          isCreatedListLoading,
          isDraftListLoading,
          isRejectedListLoading,
          isPendingListLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
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
      required final List<Recipe> savedList,
      required final List<Recipe> createdList,
      required final List<Recipe> draftList,
      required final List<Recipe> rejectedList,
      required final List<Recipe> pendingList,
      final String? savedListError,
      final String? createdListError,
      final String? draftListError,
      final String? rejectedListError,
      final String? pendingListError,
      final bool? isSavedListLoading,
      final bool? isCreatedListLoading,
      final bool? isDraftListLoading,
      final bool? isRejectedListLoading,
      final bool? isPendingListLoading}) = _$_Loaded;

  UserDetail get user;
  List<Recipe> get savedList;
  List<Recipe> get createdList;
  List<Recipe> get draftList;
  List<Recipe> get rejectedList;
  List<Recipe> get pendingList;
  String? get savedListError;
  String? get createdListError;
  String? get draftListError;
  String? get rejectedListError;
  String? get pendingListError;
  bool? get isSavedListLoading;
  bool? get isCreatedListLoading;
  bool? get isDraftListLoading;
  bool? get isRejectedListLoading;
  bool? get isPendingListLoading;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
