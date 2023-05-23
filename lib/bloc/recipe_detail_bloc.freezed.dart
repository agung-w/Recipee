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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuthenticationState authState, int? recipeId,
            BuildContext context, String root)
        started,
    required TResult Function(BuildContext context) deleteRecipe,
    required TResult Function(BuildContext context) editRecipe,
    required TResult Function(RecipeDetail recipe) refreshDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState authState, int? recipeId,
            BuildContext context, String root)?
        started,
    TResult? Function(BuildContext context)? deleteRecipe,
    TResult? Function(BuildContext context)? editRecipe,
    TResult? Function(RecipeDetail recipe)? refreshDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState authState, int? recipeId,
            BuildContext context, String root)?
        started,
    TResult Function(BuildContext context)? deleteRecipe,
    TResult Function(BuildContext context)? editRecipe,
    TResult Function(RecipeDetail recipe)? refreshDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DeleteRecipe value) deleteRecipe,
    required TResult Function(_EditRecipe value) editRecipe,
    required TResult Function(_RefreshDetail value) refreshDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DeleteRecipe value)? deleteRecipe,
    TResult? Function(_EditRecipe value)? editRecipe,
    TResult? Function(_RefreshDetail value)? refreshDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DeleteRecipe value)? deleteRecipe,
    TResult Function(_EditRecipe value)? editRecipe,
    TResult Function(_RefreshDetail value)? refreshDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDetailEventCopyWith<$Res> {
  factory $RecipeDetailEventCopyWith(
          RecipeDetailEvent value, $Res Function(RecipeDetailEvent) then) =
      _$RecipeDetailEventCopyWithImpl<$Res, RecipeDetailEvent>;
}

/// @nodoc
class _$RecipeDetailEventCopyWithImpl<$Res, $Val extends RecipeDetailEvent>
    implements $RecipeDetailEventCopyWith<$Res> {
  _$RecipeDetailEventCopyWithImpl(this._value, this._then);

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
  $Res call(
      {UserAuthenticationState authState,
      int? recipeId,
      BuildContext context,
      String root});

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
    Object? recipeId = freezed,
    Object? context = null,
    Object? root = null,
  }) {
    return _then(_$_Started(
      authState: null == authState
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as UserAuthenticationState,
      recipeId: freezed == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int?,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      root: null == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as String,
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
      {required this.authState,
      required this.recipeId,
      required this.context,
      required this.root});

  @override
  final UserAuthenticationState authState;
  @override
  final int? recipeId;
  @override
  final BuildContext context;
  @override
  final String root;

  @override
  String toString() {
    return 'RecipeDetailEvent.started(authState: $authState, recipeId: $recipeId, context: $context, root: $root)';
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
            (identical(other.context, context) || other.context == context) &&
            (identical(other.root, root) || other.root == root));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, authState, recipeId, context, root);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuthenticationState authState, int? recipeId,
            BuildContext context, String root)
        started,
    required TResult Function(BuildContext context) deleteRecipe,
    required TResult Function(BuildContext context) editRecipe,
    required TResult Function(RecipeDetail recipe) refreshDetail,
  }) {
    return started(authState, recipeId, context, root);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState authState, int? recipeId,
            BuildContext context, String root)?
        started,
    TResult? Function(BuildContext context)? deleteRecipe,
    TResult? Function(BuildContext context)? editRecipe,
    TResult? Function(RecipeDetail recipe)? refreshDetail,
  }) {
    return started?.call(authState, recipeId, context, root);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState authState, int? recipeId,
            BuildContext context, String root)?
        started,
    TResult Function(BuildContext context)? deleteRecipe,
    TResult Function(BuildContext context)? editRecipe,
    TResult Function(RecipeDetail recipe)? refreshDetail,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(authState, recipeId, context, root);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DeleteRecipe value) deleteRecipe,
    required TResult Function(_EditRecipe value) editRecipe,
    required TResult Function(_RefreshDetail value) refreshDetail,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DeleteRecipe value)? deleteRecipe,
    TResult? Function(_EditRecipe value)? editRecipe,
    TResult? Function(_RefreshDetail value)? refreshDetail,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DeleteRecipe value)? deleteRecipe,
    TResult Function(_EditRecipe value)? editRecipe,
    TResult Function(_RefreshDetail value)? refreshDetail,
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
      required final int? recipeId,
      required final BuildContext context,
      required final String root}) = _$_Started;

  UserAuthenticationState get authState;
  int? get recipeId;
  BuildContext get context;
  String get root;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteRecipeCopyWith<$Res> {
  factory _$$_DeleteRecipeCopyWith(
          _$_DeleteRecipe value, $Res Function(_$_DeleteRecipe) then) =
      __$$_DeleteRecipeCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_DeleteRecipeCopyWithImpl<$Res>
    extends _$RecipeDetailEventCopyWithImpl<$Res, _$_DeleteRecipe>
    implements _$$_DeleteRecipeCopyWith<$Res> {
  __$$_DeleteRecipeCopyWithImpl(
      _$_DeleteRecipe _value, $Res Function(_$_DeleteRecipe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$_DeleteRecipe(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_DeleteRecipe implements _DeleteRecipe {
  const _$_DeleteRecipe({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'RecipeDetailEvent.deleteRecipe(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteRecipe &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteRecipeCopyWith<_$_DeleteRecipe> get copyWith =>
      __$$_DeleteRecipeCopyWithImpl<_$_DeleteRecipe>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuthenticationState authState, int? recipeId,
            BuildContext context, String root)
        started,
    required TResult Function(BuildContext context) deleteRecipe,
    required TResult Function(BuildContext context) editRecipe,
    required TResult Function(RecipeDetail recipe) refreshDetail,
  }) {
    return deleteRecipe(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState authState, int? recipeId,
            BuildContext context, String root)?
        started,
    TResult? Function(BuildContext context)? deleteRecipe,
    TResult? Function(BuildContext context)? editRecipe,
    TResult? Function(RecipeDetail recipe)? refreshDetail,
  }) {
    return deleteRecipe?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState authState, int? recipeId,
            BuildContext context, String root)?
        started,
    TResult Function(BuildContext context)? deleteRecipe,
    TResult Function(BuildContext context)? editRecipe,
    TResult Function(RecipeDetail recipe)? refreshDetail,
    required TResult orElse(),
  }) {
    if (deleteRecipe != null) {
      return deleteRecipe(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DeleteRecipe value) deleteRecipe,
    required TResult Function(_EditRecipe value) editRecipe,
    required TResult Function(_RefreshDetail value) refreshDetail,
  }) {
    return deleteRecipe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DeleteRecipe value)? deleteRecipe,
    TResult? Function(_EditRecipe value)? editRecipe,
    TResult? Function(_RefreshDetail value)? refreshDetail,
  }) {
    return deleteRecipe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DeleteRecipe value)? deleteRecipe,
    TResult Function(_EditRecipe value)? editRecipe,
    TResult Function(_RefreshDetail value)? refreshDetail,
    required TResult orElse(),
  }) {
    if (deleteRecipe != null) {
      return deleteRecipe(this);
    }
    return orElse();
  }
}

abstract class _DeleteRecipe implements RecipeDetailEvent {
  const factory _DeleteRecipe({required final BuildContext context}) =
      _$_DeleteRecipe;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_DeleteRecipeCopyWith<_$_DeleteRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditRecipeCopyWith<$Res> {
  factory _$$_EditRecipeCopyWith(
          _$_EditRecipe value, $Res Function(_$_EditRecipe) then) =
      __$$_EditRecipeCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_EditRecipeCopyWithImpl<$Res>
    extends _$RecipeDetailEventCopyWithImpl<$Res, _$_EditRecipe>
    implements _$$_EditRecipeCopyWith<$Res> {
  __$$_EditRecipeCopyWithImpl(
      _$_EditRecipe _value, $Res Function(_$_EditRecipe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$_EditRecipe(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_EditRecipe implements _EditRecipe {
  const _$_EditRecipe({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'RecipeDetailEvent.editRecipe(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditRecipe &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditRecipeCopyWith<_$_EditRecipe> get copyWith =>
      __$$_EditRecipeCopyWithImpl<_$_EditRecipe>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuthenticationState authState, int? recipeId,
            BuildContext context, String root)
        started,
    required TResult Function(BuildContext context) deleteRecipe,
    required TResult Function(BuildContext context) editRecipe,
    required TResult Function(RecipeDetail recipe) refreshDetail,
  }) {
    return editRecipe(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState authState, int? recipeId,
            BuildContext context, String root)?
        started,
    TResult? Function(BuildContext context)? deleteRecipe,
    TResult? Function(BuildContext context)? editRecipe,
    TResult? Function(RecipeDetail recipe)? refreshDetail,
  }) {
    return editRecipe?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState authState, int? recipeId,
            BuildContext context, String root)?
        started,
    TResult Function(BuildContext context)? deleteRecipe,
    TResult Function(BuildContext context)? editRecipe,
    TResult Function(RecipeDetail recipe)? refreshDetail,
    required TResult orElse(),
  }) {
    if (editRecipe != null) {
      return editRecipe(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DeleteRecipe value) deleteRecipe,
    required TResult Function(_EditRecipe value) editRecipe,
    required TResult Function(_RefreshDetail value) refreshDetail,
  }) {
    return editRecipe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DeleteRecipe value)? deleteRecipe,
    TResult? Function(_EditRecipe value)? editRecipe,
    TResult? Function(_RefreshDetail value)? refreshDetail,
  }) {
    return editRecipe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DeleteRecipe value)? deleteRecipe,
    TResult Function(_EditRecipe value)? editRecipe,
    TResult Function(_RefreshDetail value)? refreshDetail,
    required TResult orElse(),
  }) {
    if (editRecipe != null) {
      return editRecipe(this);
    }
    return orElse();
  }
}

abstract class _EditRecipe implements RecipeDetailEvent {
  const factory _EditRecipe({required final BuildContext context}) =
      _$_EditRecipe;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_EditRecipeCopyWith<_$_EditRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshDetailCopyWith<$Res> {
  factory _$$_RefreshDetailCopyWith(
          _$_RefreshDetail value, $Res Function(_$_RefreshDetail) then) =
      __$$_RefreshDetailCopyWithImpl<$Res>;
  @useResult
  $Res call({RecipeDetail recipe});
}

/// @nodoc
class __$$_RefreshDetailCopyWithImpl<$Res>
    extends _$RecipeDetailEventCopyWithImpl<$Res, _$_RefreshDetail>
    implements _$$_RefreshDetailCopyWith<$Res> {
  __$$_RefreshDetailCopyWithImpl(
      _$_RefreshDetail _value, $Res Function(_$_RefreshDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
  }) {
    return _then(_$_RefreshDetail(
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeDetail,
    ));
  }
}

/// @nodoc

class _$_RefreshDetail implements _RefreshDetail {
  const _$_RefreshDetail({required this.recipe});

  @override
  final RecipeDetail recipe;

  @override
  String toString() {
    return 'RecipeDetailEvent.refreshDetail(recipe: $recipe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshDetail &&
            (identical(other.recipe, recipe) || other.recipe == recipe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshDetailCopyWith<_$_RefreshDetail> get copyWith =>
      __$$_RefreshDetailCopyWithImpl<_$_RefreshDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuthenticationState authState, int? recipeId,
            BuildContext context, String root)
        started,
    required TResult Function(BuildContext context) deleteRecipe,
    required TResult Function(BuildContext context) editRecipe,
    required TResult Function(RecipeDetail recipe) refreshDetail,
  }) {
    return refreshDetail(recipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState authState, int? recipeId,
            BuildContext context, String root)?
        started,
    TResult? Function(BuildContext context)? deleteRecipe,
    TResult? Function(BuildContext context)? editRecipe,
    TResult? Function(RecipeDetail recipe)? refreshDetail,
  }) {
    return refreshDetail?.call(recipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState authState, int? recipeId,
            BuildContext context, String root)?
        started,
    TResult Function(BuildContext context)? deleteRecipe,
    TResult Function(BuildContext context)? editRecipe,
    TResult Function(RecipeDetail recipe)? refreshDetail,
    required TResult orElse(),
  }) {
    if (refreshDetail != null) {
      return refreshDetail(recipe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DeleteRecipe value) deleteRecipe,
    required TResult Function(_EditRecipe value) editRecipe,
    required TResult Function(_RefreshDetail value) refreshDetail,
  }) {
    return refreshDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DeleteRecipe value)? deleteRecipe,
    TResult? Function(_EditRecipe value)? editRecipe,
    TResult? Function(_RefreshDetail value)? refreshDetail,
  }) {
    return refreshDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DeleteRecipe value)? deleteRecipe,
    TResult Function(_EditRecipe value)? editRecipe,
    TResult Function(_RefreshDetail value)? refreshDetail,
    required TResult orElse(),
  }) {
    if (refreshDetail != null) {
      return refreshDetail(this);
    }
    return orElse();
  }
}

abstract class _RefreshDetail implements RecipeDetailEvent {
  const factory _RefreshDetail({required final RecipeDetail recipe}) =
      _$_RefreshDetail;

  RecipeDetail get recipe;
  @JsonKey(ignore: true)
  _$$_RefreshDetailCopyWith<_$_RefreshDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecipeDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            RecipeDetail recipeDetail, SignedIn authState, String root)
        loaded,
    required TResult Function(String? message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            RecipeDetail recipeDetail, SignedIn authState, String root)?
        loaded,
    TResult? Function(String? message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            RecipeDetail recipeDetail, SignedIn authState, String root)?
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
    required TResult Function(
            RecipeDetail recipeDetail, SignedIn authState, String root)
        loaded,
    required TResult Function(String? message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            RecipeDetail recipeDetail, SignedIn authState, String root)?
        loaded,
    TResult? Function(String? message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            RecipeDetail recipeDetail, SignedIn authState, String root)?
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
  $Res call({RecipeDetail recipeDetail, SignedIn authState, String root});
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
    Object? authState = null,
    Object? root = null,
  }) {
    return _then(_$_Loaded(
      recipeDetail: null == recipeDetail
          ? _value.recipeDetail
          : recipeDetail // ignore: cast_nullable_to_non_nullable
              as RecipeDetail,
      authState: null == authState
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as SignedIn,
      root: null == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required this.recipeDetail,
      required this.authState,
      required this.root});

  @override
  final RecipeDetail recipeDetail;
  @override
  final SignedIn authState;
  @override
  final String root;

  @override
  String toString() {
    return 'RecipeDetailState.loaded(recipeDetail: $recipeDetail, authState: $authState, root: $root)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.recipeDetail, recipeDetail) ||
                other.recipeDetail == recipeDetail) &&
            (identical(other.authState, authState) ||
                other.authState == authState) &&
            (identical(other.root, root) || other.root == root));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeDetail, authState, root);

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
            RecipeDetail recipeDetail, SignedIn authState, String root)
        loaded,
    required TResult Function(String? message) failed,
  }) {
    return loaded(recipeDetail, authState, root);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            RecipeDetail recipeDetail, SignedIn authState, String root)?
        loaded,
    TResult? Function(String? message)? failed,
  }) {
    return loaded?.call(recipeDetail, authState, root);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            RecipeDetail recipeDetail, SignedIn authState, String root)?
        loaded,
    TResult Function(String? message)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(recipeDetail, authState, root);
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
      required final SignedIn authState,
      required final String root}) = _$_Loaded;

  RecipeDetail get recipeDetail;
  SignedIn get authState;
  String get root;
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
    required TResult Function(
            RecipeDetail recipeDetail, SignedIn authState, String root)
        loaded,
    required TResult Function(String? message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            RecipeDetail recipeDetail, SignedIn authState, String root)?
        loaded,
    TResult? Function(String? message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            RecipeDetail recipeDetail, SignedIn authState, String root)?
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
