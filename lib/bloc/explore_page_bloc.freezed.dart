// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'explore_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExplorePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) started,
    required TResult Function(String query, String? token) search,
    required TResult Function(String query, String? token) refreshResult,
    required TResult Function(int recipeId, bool? isSaved) changeSaveStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? token)? started,
    TResult? Function(String query, String? token)? search,
    TResult? Function(String query, String? token)? refreshResult,
    TResult? Function(int recipeId, bool? isSaved)? changeSaveStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? started,
    TResult Function(String query, String? token)? search,
    TResult Function(String query, String? token)? refreshResult,
    TResult Function(int recipeId, bool? isSaved)? changeSaveStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_RefreshResult value) refreshResult,
    required TResult Function(_ChangeSaveStatus value) changeSaveStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_RefreshResult value)? refreshResult,
    TResult? Function(_ChangeSaveStatus value)? changeSaveStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_RefreshResult value)? refreshResult,
    TResult Function(_ChangeSaveStatus value)? changeSaveStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExplorePageEventCopyWith<$Res> {
  factory $ExplorePageEventCopyWith(
          ExplorePageEvent value, $Res Function(ExplorePageEvent) then) =
      _$ExplorePageEventCopyWithImpl<$Res, ExplorePageEvent>;
}

/// @nodoc
class _$ExplorePageEventCopyWithImpl<$Res, $Val extends ExplorePageEvent>
    implements $ExplorePageEventCopyWith<$Res> {
  _$ExplorePageEventCopyWithImpl(this._value, this._then);

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
  $Res call({String? token});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ExplorePageEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$_Started(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({this.token});

  @override
  final String? token;

  @override
  String toString() {
    return 'ExplorePageEvent.started(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) started,
    required TResult Function(String query, String? token) search,
    required TResult Function(String query, String? token) refreshResult,
    required TResult Function(int recipeId, bool? isSaved) changeSaveStatus,
  }) {
    return started(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? token)? started,
    TResult? Function(String query, String? token)? search,
    TResult? Function(String query, String? token)? refreshResult,
    TResult? Function(int recipeId, bool? isSaved)? changeSaveStatus,
  }) {
    return started?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? started,
    TResult Function(String query, String? token)? search,
    TResult Function(String query, String? token)? refreshResult,
    TResult Function(int recipeId, bool? isSaved)? changeSaveStatus,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_RefreshResult value) refreshResult,
    required TResult Function(_ChangeSaveStatus value) changeSaveStatus,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_RefreshResult value)? refreshResult,
    TResult? Function(_ChangeSaveStatus value)? changeSaveStatus,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_RefreshResult value)? refreshResult,
    TResult Function(_ChangeSaveStatus value)? changeSaveStatus,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ExplorePageEvent {
  const factory _Started({final String? token}) = _$_Started;

  String? get token;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchCopyWith<$Res> {
  factory _$$_SearchCopyWith(_$_Search value, $Res Function(_$_Search) then) =
      __$$_SearchCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, String? token});
}

/// @nodoc
class __$$_SearchCopyWithImpl<$Res>
    extends _$ExplorePageEventCopyWithImpl<$Res, _$_Search>
    implements _$$_SearchCopyWith<$Res> {
  __$$_SearchCopyWithImpl(_$_Search _value, $Res Function(_$_Search) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? token = freezed,
  }) {
    return _then(_$_Search(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Search implements _Search {
  const _$_Search({required this.query, this.token});

  @override
  final String query;
  @override
  final String? token;

  @override
  String toString() {
    return 'ExplorePageEvent.search(query: $query, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Search &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      __$$_SearchCopyWithImpl<_$_Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) started,
    required TResult Function(String query, String? token) search,
    required TResult Function(String query, String? token) refreshResult,
    required TResult Function(int recipeId, bool? isSaved) changeSaveStatus,
  }) {
    return search(query, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? token)? started,
    TResult? Function(String query, String? token)? search,
    TResult? Function(String query, String? token)? refreshResult,
    TResult? Function(int recipeId, bool? isSaved)? changeSaveStatus,
  }) {
    return search?.call(query, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? started,
    TResult Function(String query, String? token)? search,
    TResult Function(String query, String? token)? refreshResult,
    TResult Function(int recipeId, bool? isSaved)? changeSaveStatus,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_RefreshResult value) refreshResult,
    required TResult Function(_ChangeSaveStatus value) changeSaveStatus,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_RefreshResult value)? refreshResult,
    TResult? Function(_ChangeSaveStatus value)? changeSaveStatus,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_RefreshResult value)? refreshResult,
    TResult Function(_ChangeSaveStatus value)? changeSaveStatus,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements ExplorePageEvent {
  const factory _Search({required final String query, final String? token}) =
      _$_Search;

  String get query;
  String? get token;
  @JsonKey(ignore: true)
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshResultCopyWith<$Res> {
  factory _$$_RefreshResultCopyWith(
          _$_RefreshResult value, $Res Function(_$_RefreshResult) then) =
      __$$_RefreshResultCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, String? token});
}

/// @nodoc
class __$$_RefreshResultCopyWithImpl<$Res>
    extends _$ExplorePageEventCopyWithImpl<$Res, _$_RefreshResult>
    implements _$$_RefreshResultCopyWith<$Res> {
  __$$_RefreshResultCopyWithImpl(
      _$_RefreshResult _value, $Res Function(_$_RefreshResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? token = freezed,
  }) {
    return _then(_$_RefreshResult(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RefreshResult implements _RefreshResult {
  const _$_RefreshResult({required this.query, this.token});

  @override
  final String query;
  @override
  final String? token;

  @override
  String toString() {
    return 'ExplorePageEvent.refreshResult(query: $query, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshResult &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshResultCopyWith<_$_RefreshResult> get copyWith =>
      __$$_RefreshResultCopyWithImpl<_$_RefreshResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) started,
    required TResult Function(String query, String? token) search,
    required TResult Function(String query, String? token) refreshResult,
    required TResult Function(int recipeId, bool? isSaved) changeSaveStatus,
  }) {
    return refreshResult(query, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? token)? started,
    TResult? Function(String query, String? token)? search,
    TResult? Function(String query, String? token)? refreshResult,
    TResult? Function(int recipeId, bool? isSaved)? changeSaveStatus,
  }) {
    return refreshResult?.call(query, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? started,
    TResult Function(String query, String? token)? search,
    TResult Function(String query, String? token)? refreshResult,
    TResult Function(int recipeId, bool? isSaved)? changeSaveStatus,
    required TResult orElse(),
  }) {
    if (refreshResult != null) {
      return refreshResult(query, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_RefreshResult value) refreshResult,
    required TResult Function(_ChangeSaveStatus value) changeSaveStatus,
  }) {
    return refreshResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_RefreshResult value)? refreshResult,
    TResult? Function(_ChangeSaveStatus value)? changeSaveStatus,
  }) {
    return refreshResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_RefreshResult value)? refreshResult,
    TResult Function(_ChangeSaveStatus value)? changeSaveStatus,
    required TResult orElse(),
  }) {
    if (refreshResult != null) {
      return refreshResult(this);
    }
    return orElse();
  }
}

abstract class _RefreshResult implements ExplorePageEvent {
  const factory _RefreshResult(
      {required final String query, final String? token}) = _$_RefreshResult;

  String get query;
  String? get token;
  @JsonKey(ignore: true)
  _$$_RefreshResultCopyWith<_$_RefreshResult> get copyWith =>
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
    extends _$ExplorePageEventCopyWithImpl<$Res, _$_ChangeSaveStatus>
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
    return 'ExplorePageEvent.changeSaveStatus(recipeId: $recipeId, isSaved: $isSaved)';
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
    required TResult Function(String? token) started,
    required TResult Function(String query, String? token) search,
    required TResult Function(String query, String? token) refreshResult,
    required TResult Function(int recipeId, bool? isSaved) changeSaveStatus,
  }) {
    return changeSaveStatus(recipeId, isSaved);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? token)? started,
    TResult? Function(String query, String? token)? search,
    TResult? Function(String query, String? token)? refreshResult,
    TResult? Function(int recipeId, bool? isSaved)? changeSaveStatus,
  }) {
    return changeSaveStatus?.call(recipeId, isSaved);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? started,
    TResult Function(String query, String? token)? search,
    TResult Function(String query, String? token)? refreshResult,
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
    required TResult Function(_Search value) search,
    required TResult Function(_RefreshResult value) refreshResult,
    required TResult Function(_ChangeSaveStatus value) changeSaveStatus,
  }) {
    return changeSaveStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_RefreshResult value)? refreshResult,
    TResult? Function(_ChangeSaveStatus value)? changeSaveStatus,
  }) {
    return changeSaveStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_RefreshResult value)? refreshResult,
    TResult Function(_ChangeSaveStatus value)? changeSaveStatus,
    required TResult orElse(),
  }) {
    if (changeSaveStatus != null) {
      return changeSaveStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeSaveStatus implements ExplorePageEvent {
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
mixin _$ExplorePageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Recipe> recipeList) loaded,
    required TResult Function(String? message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Recipe> recipeList)? loaded,
    TResult? Function(String? message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Recipe> recipeList)? loaded,
    TResult Function(String? message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExplorePageStateCopyWith<$Res> {
  factory $ExplorePageStateCopyWith(
          ExplorePageState value, $Res Function(ExplorePageState) then) =
      _$ExplorePageStateCopyWithImpl<$Res, ExplorePageState>;
}

/// @nodoc
class _$ExplorePageStateCopyWithImpl<$Res, $Val extends ExplorePageState>
    implements $ExplorePageStateCopyWith<$Res> {
  _$ExplorePageStateCopyWithImpl(this._value, this._then);

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
    extends _$ExplorePageStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ExplorePageState.initial()';
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
    required TResult Function(List<Recipe> recipeList) loaded,
    required TResult Function(String? message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Recipe> recipeList)? loaded,
    TResult? Function(String? message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Recipe> recipeList)? loaded,
    TResult Function(String? message)? failed,
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
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ExplorePageState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Recipe> recipeList});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$ExplorePageStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeList = null,
  }) {
    return _then(_$_Loaded(
      recipeList: null == recipeList
          ? _value._recipeList
          : recipeList // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required final List<Recipe> recipeList})
      : _recipeList = recipeList;

  final List<Recipe> _recipeList;
  @override
  List<Recipe> get recipeList {
    if (_recipeList is EqualUnmodifiableListView) return _recipeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipeList);
  }

  @override
  String toString() {
    return 'ExplorePageState.loaded(recipeList: $recipeList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality()
                .equals(other._recipeList, _recipeList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_recipeList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Recipe> recipeList) loaded,
    required TResult Function(String? message) failed,
  }) {
    return loaded(recipeList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Recipe> recipeList)? loaded,
    TResult? Function(String? message)? failed,
  }) {
    return loaded?.call(recipeList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Recipe> recipeList)? loaded,
    TResult Function(String? message)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(recipeList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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

abstract class _Loaded implements ExplorePageState {
  const factory _Loaded({required final List<Recipe> recipeList}) = _$_Loaded;

  List<Recipe> get recipeList;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailedCopyWith<$Res> {
  factory _$$_FailedCopyWith(_$_Failed value, $Res Function(_$_Failed) then) =
      __$$_FailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_FailedCopyWithImpl<$Res>
    extends _$ExplorePageStateCopyWithImpl<$Res, _$_Failed>
    implements _$$_FailedCopyWith<$Res> {
  __$$_FailedCopyWithImpl(_$_Failed _value, $Res Function(_$_Failed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_Failed(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ExplorePageState.failed(message: $message)';
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
    required TResult Function() initial,
    required TResult Function(List<Recipe> recipeList) loaded,
    required TResult Function(String? message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Recipe> recipeList)? loaded,
    TResult? Function(String? message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Recipe> recipeList)? loaded,
    TResult Function(String? message)? failed,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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

abstract class _Failed implements ExplorePageState {
  const factory _Failed({final String? message}) = _$_Failed;

  String? get message;
  @JsonKey(ignore: true)
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      throw _privateConstructorUsedError;
}
