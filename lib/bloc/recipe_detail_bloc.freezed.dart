// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeDetailEvent {
  int get recipeId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuthenticationState authState, int recipeId,
            BuildContext context)
        started,
    required TResult Function(int recipeId, String token) refreshComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState authState, int recipeId,
            BuildContext context)?
        started,
    TResult? Function(int recipeId, String token)? refreshComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState authState, int recipeId,
            BuildContext context)?
        started,
    TResult Function(int recipeId, String token)? refreshComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshComment value) refreshComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshComment value)? refreshComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshComment value)? refreshComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeDetailEventCopyWith<RecipeDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDetailEventCopyWith<$Res> {
  factory $RecipeDetailEventCopyWith(
          RecipeDetailEvent value, $Res Function(RecipeDetailEvent) then) =
      _$RecipeDetailEventCopyWithImpl<$Res, RecipeDetailEvent>;
  @useResult
  $Res call({int recipeId});
}

/// @nodoc
class _$RecipeDetailEventCopyWithImpl<$Res, $Val extends RecipeDetailEvent>
    implements $RecipeDetailEventCopyWith<$Res> {
  _$RecipeDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
  }) {
    return _then(_value.copyWith(
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res>
    implements $RecipeDetailEventCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserAuthenticationState authState, int recipeId, BuildContext context});

  $UserAuthenticationStateCopyWith<$Res> get authState;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$RecipeDetailEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authState = null,
    Object? recipeId = null,
    Object? context = null,
  }) {
    return _then(_$_Started(
      authState: null == authState
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as UserAuthenticationState,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
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
  const _$_Started(
      {required this.authState, required this.recipeId, required this.context});

  @override
  final UserAuthenticationState authState;
  @override
  final int recipeId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'RecipeDetailEvent.started(authState: $authState, recipeId: $recipeId, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.authState, authState) ||
                other.authState == authState) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authState, recipeId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuthenticationState authState, int recipeId,
            BuildContext context)
        started,
    required TResult Function(int recipeId, String token) refreshComment,
  }) {
    return started(authState, recipeId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState authState, int recipeId,
            BuildContext context)?
        started,
    TResult? Function(int recipeId, String token)? refreshComment,
  }) {
    return started?.call(authState, recipeId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState authState, int recipeId,
            BuildContext context)?
        started,
    TResult Function(int recipeId, String token)? refreshComment,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(authState, recipeId, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshComment value) refreshComment,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshComment value)? refreshComment,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshComment value)? refreshComment,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RecipeDetailEvent {
  const factory _Started(
      {required final UserAuthenticationState authState,
      required final int recipeId,
      required final BuildContext context}) = _$_Started;

  UserAuthenticationState get authState;
  @override
  int get recipeId;
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshCommentCopyWith<$Res>
    implements $RecipeDetailEventCopyWith<$Res> {
  factory _$$_RefreshCommentCopyWith(
          _$_RefreshComment value, $Res Function(_$_RefreshComment) then) =
      __$$_RefreshCommentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int recipeId, String token});
}

/// @nodoc
class __$$_RefreshCommentCopyWithImpl<$Res>
    extends _$RecipeDetailEventCopyWithImpl<$Res, _$_RefreshComment>
    implements _$$_RefreshCommentCopyWith<$Res> {
  __$$_RefreshCommentCopyWithImpl(
      _$_RefreshComment _value, $Res Function(_$_RefreshComment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
    Object? token = null,
  }) {
    return _then(_$_RefreshComment(
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RefreshComment implements _RefreshComment {
  const _$_RefreshComment({required this.recipeId, required this.token});

  @override
  final int recipeId;
  @override
  final String token;

  @override
  String toString() {
    return 'RecipeDetailEvent.refreshComment(recipeId: $recipeId, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshComment &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeId, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshCommentCopyWith<_$_RefreshComment> get copyWith =>
      __$$_RefreshCommentCopyWithImpl<_$_RefreshComment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuthenticationState authState, int recipeId,
            BuildContext context)
        started,
    required TResult Function(int recipeId, String token) refreshComment,
  }) {
    return refreshComment(recipeId, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState authState, int recipeId,
            BuildContext context)?
        started,
    TResult? Function(int recipeId, String token)? refreshComment,
  }) {
    return refreshComment?.call(recipeId, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState authState, int recipeId,
            BuildContext context)?
        started,
    TResult Function(int recipeId, String token)? refreshComment,
    required TResult orElse(),
  }) {
    if (refreshComment != null) {
      return refreshComment(recipeId, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshComment value) refreshComment,
  }) {
    return refreshComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshComment value)? refreshComment,
  }) {
    return refreshComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshComment value)? refreshComment,
    required TResult orElse(),
  }) {
    if (refreshComment != null) {
      return refreshComment(this);
    }
    return orElse();
  }
}

abstract class _RefreshComment implements RecipeDetailEvent {
  const factory _RefreshComment(
      {required final int recipeId,
      required final String token}) = _$_RefreshComment;

  @override
  int get recipeId;
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_RefreshCommentCopyWith<_$_RefreshComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecipeDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(RecipeDetail recipeDetail,
            ApiResult<RecipeComment?> comment, SignedIn authState)
        loaded,
    required TResult Function(String? message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(RecipeDetail recipeDetail,
            ApiResult<RecipeComment?> comment, SignedIn authState)?
        loaded,
    TResult? Function(String? message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(RecipeDetail recipeDetail,
            ApiResult<RecipeComment?> comment, SignedIn authState)?
        loaded,
    TResult Function(String? message)? failed,
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
abstract class $RecipeDetailStateCopyWith<$Res> {
  factory $RecipeDetailStateCopyWith(
          RecipeDetailState value, $Res Function(RecipeDetailState) then) =
      _$RecipeDetailStateCopyWithImpl<$Res, RecipeDetailState>;
}

/// @nodoc
class _$RecipeDetailStateCopyWithImpl<$Res, $Val extends RecipeDetailState>
    implements $RecipeDetailStateCopyWith<$Res> {
  _$RecipeDetailStateCopyWithImpl(this._value, this._then);

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
    extends _$RecipeDetailStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'RecipeDetailState.loading()';
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
    required TResult Function(RecipeDetail recipeDetail,
            ApiResult<RecipeComment?> comment, SignedIn authState)
        loaded,
    required TResult Function(String? message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(RecipeDetail recipeDetail,
            ApiResult<RecipeComment?> comment, SignedIn authState)?
        loaded,
    TResult? Function(String? message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(RecipeDetail recipeDetail,
            ApiResult<RecipeComment?> comment, SignedIn authState)?
        loaded,
    TResult Function(String? message)? failed,
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

abstract class _Loading implements RecipeDetailState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {RecipeDetail recipeDetail,
      ApiResult<RecipeComment?> comment,
      SignedIn authState});

  $ApiResultCopyWith<RecipeComment?, $Res> get comment;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$RecipeDetailStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeDetail = null,
    Object? comment = null,
    Object? authState = freezed,
  }) {
    return _then(_$_Loaded(
      recipeDetail: null == recipeDetail
          ? _value.recipeDetail
          : recipeDetail // ignore: cast_nullable_to_non_nullable
              as RecipeDetail,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as ApiResult<RecipeComment?>,
      authState: freezed == authState
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as SignedIn,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiResultCopyWith<RecipeComment?, $Res> get comment {
    return $ApiResultCopyWith<RecipeComment?, $Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value));
    });
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required this.recipeDetail,
      required this.comment,
      required this.authState});

  @override
  final RecipeDetail recipeDetail;
  @override
  final ApiResult<RecipeComment?> comment;
  @override
  final SignedIn authState;

  @override
  String toString() {
    return 'RecipeDetailState.loaded(recipeDetail: $recipeDetail, comment: $comment, authState: $authState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.recipeDetail, recipeDetail) ||
                other.recipeDetail == recipeDetail) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other.authState, authState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeDetail, comment,
      const DeepCollectionEquality().hash(authState));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(RecipeDetail recipeDetail,
            ApiResult<RecipeComment?> comment, SignedIn authState)
        loaded,
    required TResult Function(String? message) failed,
  }) {
    return loaded(recipeDetail, comment, authState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(RecipeDetail recipeDetail,
            ApiResult<RecipeComment?> comment, SignedIn authState)?
        loaded,
    TResult? Function(String? message)? failed,
  }) {
    return loaded?.call(recipeDetail, comment, authState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(RecipeDetail recipeDetail,
            ApiResult<RecipeComment?> comment, SignedIn authState)?
        loaded,
    TResult Function(String? message)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(recipeDetail, comment, authState);
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

abstract class _Loaded implements RecipeDetailState {
  const factory _Loaded(
      {required final RecipeDetail recipeDetail,
      required final ApiResult<RecipeComment?> comment,
      required final SignedIn authState}) = _$_Loaded;

  RecipeDetail get recipeDetail;
  ApiResult<RecipeComment?> get comment;
  SignedIn get authState;
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
    extends _$RecipeDetailStateCopyWithImpl<$Res, _$_Failed>
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
    return 'RecipeDetailState.failed(message: $message)';
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
    required TResult Function(RecipeDetail recipeDetail,
            ApiResult<RecipeComment?> comment, SignedIn authState)
        loaded,
    required TResult Function(String? message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(RecipeDetail recipeDetail,
            ApiResult<RecipeComment?> comment, SignedIn authState)?
        loaded,
    TResult? Function(String? message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(RecipeDetail recipeDetail,
            ApiResult<RecipeComment?> comment, SignedIn authState)?
        loaded,
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

abstract class _Failed implements RecipeDetailState {
  const factory _Failed({final String? message}) = _$_Failed;

  String? get message;
  @JsonKey(ignore: true)
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      throw _privateConstructorUsedError;
}
