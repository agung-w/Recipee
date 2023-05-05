// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfilePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String? token) getProfileData,
    required TResult Function(int recipeId, bool? isSaved) changeSaveStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String? token)? getProfileData,
    TResult? Function(int recipeId, bool? isSaved)? changeSaveStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String? token)? getProfileData,
    TResult Function(int recipeId, bool? isSaved)? changeSaveStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileData value) getProfileData,
    required TResult Function(_ChangeSaveStatus value) changeSaveStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileData value)? getProfileData,
    TResult? Function(_ChangeSaveStatus value)? changeSaveStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileData value)? getProfileData,
    TResult Function(_ChangeSaveStatus value)? changeSaveStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePageEventCopyWith<$Res> {
  factory $ProfilePageEventCopyWith(
          ProfilePageEvent value, $Res Function(ProfilePageEvent) then) =
      _$ProfilePageEventCopyWithImpl<$Res, ProfilePageEvent>;
}

/// @nodoc
class _$ProfilePageEventCopyWithImpl<$Res, $Val extends ProfilePageEvent>
    implements $ProfilePageEventCopyWith<$Res> {
  _$ProfilePageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetProfileDataCopyWith<$Res> {
  factory _$$_GetProfileDataCopyWith(
          _$_GetProfileData value, $Res Function(_$_GetProfileData) then) =
      __$$_GetProfileDataCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String? token});
}

/// @nodoc
class __$$_GetProfileDataCopyWithImpl<$Res>
    extends _$ProfilePageEventCopyWithImpl<$Res, _$_GetProfileData>
    implements _$$_GetProfileDataCopyWith<$Res> {
  __$$_GetProfileDataCopyWithImpl(
      _$_GetProfileData _value, $Res Function(_$_GetProfileData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? token = freezed,
  }) {
    return _then(_$_GetProfileData(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetProfileData implements _GetProfileData {
  const _$_GetProfileData({required this.username, required this.token});

  @override
  final String username;
  @override
  final String? token;

  @override
  String toString() {
    return 'ProfilePageEvent.getProfileData(username: $username, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProfileData &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetProfileDataCopyWith<_$_GetProfileData> get copyWith =>
      __$$_GetProfileDataCopyWithImpl<_$_GetProfileData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String? token) getProfileData,
    required TResult Function(int recipeId, bool? isSaved) changeSaveStatus,
  }) {
    return getProfileData(username, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String? token)? getProfileData,
    TResult? Function(int recipeId, bool? isSaved)? changeSaveStatus,
  }) {
    return getProfileData?.call(username, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String? token)? getProfileData,
    TResult Function(int recipeId, bool? isSaved)? changeSaveStatus,
    required TResult orElse(),
  }) {
    if (getProfileData != null) {
      return getProfileData(username, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileData value) getProfileData,
    required TResult Function(_ChangeSaveStatus value) changeSaveStatus,
  }) {
    return getProfileData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileData value)? getProfileData,
    TResult? Function(_ChangeSaveStatus value)? changeSaveStatus,
  }) {
    return getProfileData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileData value)? getProfileData,
    TResult Function(_ChangeSaveStatus value)? changeSaveStatus,
    required TResult orElse(),
  }) {
    if (getProfileData != null) {
      return getProfileData(this);
    }
    return orElse();
  }
}

abstract class _GetProfileData implements ProfilePageEvent {
  const factory _GetProfileData(
      {required final String username,
      required final String? token}) = _$_GetProfileData;

  String get username;
  String? get token;
  @JsonKey(ignore: true)
  _$$_GetProfileDataCopyWith<_$_GetProfileData> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$ProfilePageEventCopyWithImpl<$Res, _$_ChangeSaveStatus>
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
    return 'ProfilePageEvent.changeSaveStatus(recipeId: $recipeId, isSaved: $isSaved)';
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
    required TResult Function(String username, String? token) getProfileData,
    required TResult Function(int recipeId, bool? isSaved) changeSaveStatus,
  }) {
    return changeSaveStatus(recipeId, isSaved);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String? token)? getProfileData,
    TResult? Function(int recipeId, bool? isSaved)? changeSaveStatus,
  }) {
    return changeSaveStatus?.call(recipeId, isSaved);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String? token)? getProfileData,
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
    required TResult Function(_GetProfileData value) getProfileData,
    required TResult Function(_ChangeSaveStatus value) changeSaveStatus,
  }) {
    return changeSaveStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileData value)? getProfileData,
    TResult? Function(_ChangeSaveStatus value)? changeSaveStatus,
  }) {
    return changeSaveStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileData value)? getProfileData,
    TResult Function(_ChangeSaveStatus value)? changeSaveStatus,
    required TResult orElse(),
  }) {
    if (changeSaveStatus != null) {
      return changeSaveStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeSaveStatus implements ProfilePageEvent {
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
mixin _$ProfilePageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            UserDetail user,
            List<Recipe> savedList,
            List<Recipe> createdList,
            String? savedListError,
            String? createdListError,
            bool? isSavedListLoading,
            bool? isCreatedListLoading)
        loaded,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            UserDetail user,
            List<Recipe> savedList,
            List<Recipe> createdList,
            String? savedListError,
            String? createdListError,
            bool? isSavedListLoading,
            bool? isCreatedListLoading)?
        loaded,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            UserDetail user,
            List<Recipe> savedList,
            List<Recipe> createdList,
            String? savedListError,
            String? createdListError,
            bool? isSavedListLoading,
            bool? isCreatedListLoading)?
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
abstract class $ProfilePageStateCopyWith<$Res> {
  factory $ProfilePageStateCopyWith(
          ProfilePageState value, $Res Function(ProfilePageState) then) =
      _$ProfilePageStateCopyWithImpl<$Res, ProfilePageState>;
}

/// @nodoc
class _$ProfilePageStateCopyWithImpl<$Res, $Val extends ProfilePageState>
    implements $ProfilePageStateCopyWith<$Res> {
  _$ProfilePageStateCopyWithImpl(this._value, this._then);

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
    extends _$ProfilePageStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ProfilePageState.loading()';
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
            List<Recipe> savedList,
            List<Recipe> createdList,
            String? savedListError,
            String? createdListError,
            bool? isSavedListLoading,
            bool? isCreatedListLoading)
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
            List<Recipe> savedList,
            List<Recipe> createdList,
            String? savedListError,
            String? createdListError,
            bool? isSavedListLoading,
            bool? isCreatedListLoading)?
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
            List<Recipe> savedList,
            List<Recipe> createdList,
            String? savedListError,
            String? createdListError,
            bool? isSavedListLoading,
            bool? isCreatedListLoading)?
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

abstract class _Loading implements ProfilePageState {
  const factory _Loading() = _$_Loading;
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
      String? savedListError,
      String? createdListError,
      bool? isSavedListLoading,
      bool? isCreatedListLoading});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$ProfilePageStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? savedList = null,
    Object? createdList = null,
    Object? savedListError = freezed,
    Object? createdListError = freezed,
    Object? isSavedListLoading = freezed,
    Object? isCreatedListLoading = freezed,
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
      savedListError: freezed == savedListError
          ? _value.savedListError
          : savedListError // ignore: cast_nullable_to_non_nullable
              as String?,
      createdListError: freezed == createdListError
          ? _value.createdListError
          : createdListError // ignore: cast_nullable_to_non_nullable
              as String?,
      isSavedListLoading: freezed == isSavedListLoading
          ? _value.isSavedListLoading
          : isSavedListLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCreatedListLoading: freezed == isCreatedListLoading
          ? _value.isCreatedListLoading
          : isCreatedListLoading // ignore: cast_nullable_to_non_nullable
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
      this.savedListError,
      this.createdListError,
      this.isSavedListLoading,
      this.isCreatedListLoading})
      : _savedList = savedList,
        _createdList = createdList;

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

  @override
  final String? savedListError;
  @override
  final String? createdListError;
  @override
  final bool? isSavedListLoading;
  @override
  final bool? isCreatedListLoading;

  @override
  String toString() {
    return 'ProfilePageState.loaded(user: $user, savedList: $savedList, createdList: $createdList, savedListError: $savedListError, createdListError: $createdListError, isSavedListLoading: $isSavedListLoading, isCreatedListLoading: $isCreatedListLoading)';
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
            (identical(other.savedListError, savedListError) ||
                other.savedListError == savedListError) &&
            (identical(other.createdListError, createdListError) ||
                other.createdListError == createdListError) &&
            (identical(other.isSavedListLoading, isSavedListLoading) ||
                other.isSavedListLoading == isSavedListLoading) &&
            (identical(other.isCreatedListLoading, isCreatedListLoading) ||
                other.isCreatedListLoading == isCreatedListLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      const DeepCollectionEquality().hash(_savedList),
      const DeepCollectionEquality().hash(_createdList),
      savedListError,
      createdListError,
      isSavedListLoading,
      isCreatedListLoading);

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
            List<Recipe> savedList,
            List<Recipe> createdList,
            String? savedListError,
            String? createdListError,
            bool? isSavedListLoading,
            bool? isCreatedListLoading)
        loaded,
    required TResult Function(String message) failed,
  }) {
    return loaded(user, savedList, createdList, savedListError,
        createdListError, isSavedListLoading, isCreatedListLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            UserDetail user,
            List<Recipe> savedList,
            List<Recipe> createdList,
            String? savedListError,
            String? createdListError,
            bool? isSavedListLoading,
            bool? isCreatedListLoading)?
        loaded,
    TResult? Function(String message)? failed,
  }) {
    return loaded?.call(user, savedList, createdList, savedListError,
        createdListError, isSavedListLoading, isCreatedListLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            UserDetail user,
            List<Recipe> savedList,
            List<Recipe> createdList,
            String? savedListError,
            String? createdListError,
            bool? isSavedListLoading,
            bool? isCreatedListLoading)?
        loaded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user, savedList, createdList, savedListError,
          createdListError, isSavedListLoading, isCreatedListLoading);
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

abstract class _Loaded implements ProfilePageState {
  const factory _Loaded(
      {required final UserDetail user,
      required final List<Recipe> savedList,
      required final List<Recipe> createdList,
      final String? savedListError,
      final String? createdListError,
      final bool? isSavedListLoading,
      final bool? isCreatedListLoading}) = _$_Loaded;

  UserDetail get user;
  List<Recipe> get savedList;
  List<Recipe> get createdList;
  String? get savedListError;
  String? get createdListError;
  bool? get isSavedListLoading;
  bool? get isCreatedListLoading;
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
    extends _$ProfilePageStateCopyWithImpl<$Res, _$_Failed>
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
    return 'ProfilePageState.failed(message: $message)';
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
            List<Recipe> savedList,
            List<Recipe> createdList,
            String? savedListError,
            String? createdListError,
            bool? isSavedListLoading,
            bool? isCreatedListLoading)
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
            List<Recipe> savedList,
            List<Recipe> createdList,
            String? savedListError,
            String? createdListError,
            bool? isSavedListLoading,
            bool? isCreatedListLoading)?
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
            List<Recipe> savedList,
            List<Recipe> createdList,
            String? savedListError,
            String? createdListError,
            bool? isSavedListLoading,
            bool? isCreatedListLoading)?
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

abstract class _Failed implements ProfilePageState {
  const factory _Failed({required final String message}) = _$_Failed;

  String get message;
  @JsonKey(ignore: true)
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      throw _privateConstructorUsedError;
}
