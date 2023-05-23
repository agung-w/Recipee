// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) started,
    required TResult Function(
            String ingredient, String? token, dynamic Function() afterFinished)
        addIngredient,
    required TResult Function(Ingredient ingredient, String? token)
        deleteIngredient,
    required TResult Function(int recipeId, bool? isSaved) changeSaveStatus,
    required TResult Function(String? token) refreshList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? token)? started,
    TResult? Function(
            String ingredient, String? token, dynamic Function() afterFinished)?
        addIngredient,
    TResult? Function(Ingredient ingredient, String? token)? deleteIngredient,
    TResult? Function(int recipeId, bool? isSaved)? changeSaveStatus,
    TResult? Function(String? token)? refreshList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? started,
    TResult Function(
            String ingredient, String? token, dynamic Function() afterFinished)?
        addIngredient,
    TResult Function(Ingredient ingredient, String? token)? deleteIngredient,
    TResult Function(int recipeId, bool? isSaved)? changeSaveStatus,
    TResult Function(String? token)? refreshList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_ChangeSaveStatus value) changeSaveStatus,
    required TResult Function(_RefreshList value) refreshList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_ChangeSaveStatus value)? changeSaveStatus,
    TResult? Function(_RefreshList value)? refreshList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_ChangeSaveStatus value)? changeSaveStatus,
    TResult Function(_RefreshList value)? refreshList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageEventCopyWith<$Res> {
  factory $HomePageEventCopyWith(
          HomePageEvent value, $Res Function(HomePageEvent) then) =
      _$HomePageEventCopyWithImpl<$Res, HomePageEvent>;
}

/// @nodoc
class _$HomePageEventCopyWithImpl<$Res, $Val extends HomePageEvent>
    implements $HomePageEventCopyWith<$Res> {
  _$HomePageEventCopyWithImpl(this._value, this._then);

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
    extends _$HomePageEventCopyWithImpl<$Res, _$_Started>
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
    return 'HomePageEvent.started(token: $token)';
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
    required TResult Function(
            String ingredient, String? token, dynamic Function() afterFinished)
        addIngredient,
    required TResult Function(Ingredient ingredient, String? token)
        deleteIngredient,
    required TResult Function(int recipeId, bool? isSaved) changeSaveStatus,
    required TResult Function(String? token) refreshList,
  }) {
    return started(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? token)? started,
    TResult? Function(
            String ingredient, String? token, dynamic Function() afterFinished)?
        addIngredient,
    TResult? Function(Ingredient ingredient, String? token)? deleteIngredient,
    TResult? Function(int recipeId, bool? isSaved)? changeSaveStatus,
    TResult? Function(String? token)? refreshList,
  }) {
    return started?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? started,
    TResult Function(
            String ingredient, String? token, dynamic Function() afterFinished)?
        addIngredient,
    TResult Function(Ingredient ingredient, String? token)? deleteIngredient,
    TResult Function(int recipeId, bool? isSaved)? changeSaveStatus,
    TResult Function(String? token)? refreshList,
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
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_ChangeSaveStatus value) changeSaveStatus,
    required TResult Function(_RefreshList value) refreshList,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_ChangeSaveStatus value)? changeSaveStatus,
    TResult? Function(_RefreshList value)? refreshList,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_ChangeSaveStatus value)? changeSaveStatus,
    TResult Function(_RefreshList value)? refreshList,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomePageEvent {
  const factory _Started({final String? token}) = _$_Started;

  String? get token;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddIngredientCopyWith<$Res> {
  factory _$$_AddIngredientCopyWith(
          _$_AddIngredient value, $Res Function(_$_AddIngredient) then) =
      __$$_AddIngredientCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String ingredient, String? token, dynamic Function() afterFinished});
}

/// @nodoc
class __$$_AddIngredientCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res, _$_AddIngredient>
    implements _$$_AddIngredientCopyWith<$Res> {
  __$$_AddIngredientCopyWithImpl(
      _$_AddIngredient _value, $Res Function(_$_AddIngredient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = null,
    Object? token = freezed,
    Object? afterFinished = null,
  }) {
    return _then(_$_AddIngredient(
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as String,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      afterFinished: null == afterFinished
          ? _value.afterFinished
          : afterFinished // ignore: cast_nullable_to_non_nullable
              as dynamic Function(),
    ));
  }
}

/// @nodoc

class _$_AddIngredient implements _AddIngredient {
  const _$_AddIngredient(
      {required this.ingredient, this.token, required this.afterFinished});

  @override
  final String ingredient;
  @override
  final String? token;
  @override
  final dynamic Function() afterFinished;

  @override
  String toString() {
    return 'HomePageEvent.addIngredient(ingredient: $ingredient, token: $token, afterFinished: $afterFinished)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddIngredient &&
            (identical(other.ingredient, ingredient) ||
                other.ingredient == ingredient) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.afterFinished, afterFinished) ||
                other.afterFinished == afterFinished));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, ingredient, token, afterFinished);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddIngredientCopyWith<_$_AddIngredient> get copyWith =>
      __$$_AddIngredientCopyWithImpl<_$_AddIngredient>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) started,
    required TResult Function(
            String ingredient, String? token, dynamic Function() afterFinished)
        addIngredient,
    required TResult Function(Ingredient ingredient, String? token)
        deleteIngredient,
    required TResult Function(int recipeId, bool? isSaved) changeSaveStatus,
    required TResult Function(String? token) refreshList,
  }) {
    return addIngredient(ingredient, token, afterFinished);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? token)? started,
    TResult? Function(
            String ingredient, String? token, dynamic Function() afterFinished)?
        addIngredient,
    TResult? Function(Ingredient ingredient, String? token)? deleteIngredient,
    TResult? Function(int recipeId, bool? isSaved)? changeSaveStatus,
    TResult? Function(String? token)? refreshList,
  }) {
    return addIngredient?.call(ingredient, token, afterFinished);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? started,
    TResult Function(
            String ingredient, String? token, dynamic Function() afterFinished)?
        addIngredient,
    TResult Function(Ingredient ingredient, String? token)? deleteIngredient,
    TResult Function(int recipeId, bool? isSaved)? changeSaveStatus,
    TResult Function(String? token)? refreshList,
    required TResult orElse(),
  }) {
    if (addIngredient != null) {
      return addIngredient(ingredient, token, afterFinished);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_ChangeSaveStatus value) changeSaveStatus,
    required TResult Function(_RefreshList value) refreshList,
  }) {
    return addIngredient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_ChangeSaveStatus value)? changeSaveStatus,
    TResult? Function(_RefreshList value)? refreshList,
  }) {
    return addIngredient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_ChangeSaveStatus value)? changeSaveStatus,
    TResult Function(_RefreshList value)? refreshList,
    required TResult orElse(),
  }) {
    if (addIngredient != null) {
      return addIngredient(this);
    }
    return orElse();
  }
}

abstract class _AddIngredient implements HomePageEvent {
  const factory _AddIngredient(
      {required final String ingredient,
      final String? token,
      required final dynamic Function() afterFinished}) = _$_AddIngredient;

  String get ingredient;
  String? get token;
  dynamic Function() get afterFinished;
  @JsonKey(ignore: true)
  _$$_AddIngredientCopyWith<_$_AddIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteIngredientCopyWith<$Res> {
  factory _$$_DeleteIngredientCopyWith(
          _$_DeleteIngredient value, $Res Function(_$_DeleteIngredient) then) =
      __$$_DeleteIngredientCopyWithImpl<$Res>;
  @useResult
  $Res call({Ingredient ingredient, String? token});
}

/// @nodoc
class __$$_DeleteIngredientCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res, _$_DeleteIngredient>
    implements _$$_DeleteIngredientCopyWith<$Res> {
  __$$_DeleteIngredientCopyWithImpl(
      _$_DeleteIngredient _value, $Res Function(_$_DeleteIngredient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = null,
    Object? token = freezed,
  }) {
    return _then(_$_DeleteIngredient(
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as Ingredient,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DeleteIngredient implements _DeleteIngredient {
  const _$_DeleteIngredient({required this.ingredient, this.token});

  @override
  final Ingredient ingredient;
  @override
  final String? token;

  @override
  String toString() {
    return 'HomePageEvent.deleteIngredient(ingredient: $ingredient, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteIngredient &&
            (identical(other.ingredient, ingredient) ||
                other.ingredient == ingredient) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ingredient, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteIngredientCopyWith<_$_DeleteIngredient> get copyWith =>
      __$$_DeleteIngredientCopyWithImpl<_$_DeleteIngredient>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) started,
    required TResult Function(
            String ingredient, String? token, dynamic Function() afterFinished)
        addIngredient,
    required TResult Function(Ingredient ingredient, String? token)
        deleteIngredient,
    required TResult Function(int recipeId, bool? isSaved) changeSaveStatus,
    required TResult Function(String? token) refreshList,
  }) {
    return deleteIngredient(ingredient, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? token)? started,
    TResult? Function(
            String ingredient, String? token, dynamic Function() afterFinished)?
        addIngredient,
    TResult? Function(Ingredient ingredient, String? token)? deleteIngredient,
    TResult? Function(int recipeId, bool? isSaved)? changeSaveStatus,
    TResult? Function(String? token)? refreshList,
  }) {
    return deleteIngredient?.call(ingredient, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? started,
    TResult Function(
            String ingredient, String? token, dynamic Function() afterFinished)?
        addIngredient,
    TResult Function(Ingredient ingredient, String? token)? deleteIngredient,
    TResult Function(int recipeId, bool? isSaved)? changeSaveStatus,
    TResult Function(String? token)? refreshList,
    required TResult orElse(),
  }) {
    if (deleteIngredient != null) {
      return deleteIngredient(ingredient, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_ChangeSaveStatus value) changeSaveStatus,
    required TResult Function(_RefreshList value) refreshList,
  }) {
    return deleteIngredient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_ChangeSaveStatus value)? changeSaveStatus,
    TResult? Function(_RefreshList value)? refreshList,
  }) {
    return deleteIngredient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_ChangeSaveStatus value)? changeSaveStatus,
    TResult Function(_RefreshList value)? refreshList,
    required TResult orElse(),
  }) {
    if (deleteIngredient != null) {
      return deleteIngredient(this);
    }
    return orElse();
  }
}

abstract class _DeleteIngredient implements HomePageEvent {
  const factory _DeleteIngredient(
      {required final Ingredient ingredient,
      final String? token}) = _$_DeleteIngredient;

  Ingredient get ingredient;
  String? get token;
  @JsonKey(ignore: true)
  _$$_DeleteIngredientCopyWith<_$_DeleteIngredient> get copyWith =>
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
    extends _$HomePageEventCopyWithImpl<$Res, _$_ChangeSaveStatus>
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
    return 'HomePageEvent.changeSaveStatus(recipeId: $recipeId, isSaved: $isSaved)';
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
    required TResult Function(
            String ingredient, String? token, dynamic Function() afterFinished)
        addIngredient,
    required TResult Function(Ingredient ingredient, String? token)
        deleteIngredient,
    required TResult Function(int recipeId, bool? isSaved) changeSaveStatus,
    required TResult Function(String? token) refreshList,
  }) {
    return changeSaveStatus(recipeId, isSaved);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? token)? started,
    TResult? Function(
            String ingredient, String? token, dynamic Function() afterFinished)?
        addIngredient,
    TResult? Function(Ingredient ingredient, String? token)? deleteIngredient,
    TResult? Function(int recipeId, bool? isSaved)? changeSaveStatus,
    TResult? Function(String? token)? refreshList,
  }) {
    return changeSaveStatus?.call(recipeId, isSaved);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? started,
    TResult Function(
            String ingredient, String? token, dynamic Function() afterFinished)?
        addIngredient,
    TResult Function(Ingredient ingredient, String? token)? deleteIngredient,
    TResult Function(int recipeId, bool? isSaved)? changeSaveStatus,
    TResult Function(String? token)? refreshList,
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
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_ChangeSaveStatus value) changeSaveStatus,
    required TResult Function(_RefreshList value) refreshList,
  }) {
    return changeSaveStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_ChangeSaveStatus value)? changeSaveStatus,
    TResult? Function(_RefreshList value)? refreshList,
  }) {
    return changeSaveStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_ChangeSaveStatus value)? changeSaveStatus,
    TResult Function(_RefreshList value)? refreshList,
    required TResult orElse(),
  }) {
    if (changeSaveStatus != null) {
      return changeSaveStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeSaveStatus implements HomePageEvent {
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
abstract class _$$_RefreshListCopyWith<$Res> {
  factory _$$_RefreshListCopyWith(
          _$_RefreshList value, $Res Function(_$_RefreshList) then) =
      __$$_RefreshListCopyWithImpl<$Res>;
  @useResult
  $Res call({String? token});
}

/// @nodoc
class __$$_RefreshListCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res, _$_RefreshList>
    implements _$$_RefreshListCopyWith<$Res> {
  __$$_RefreshListCopyWithImpl(
      _$_RefreshList _value, $Res Function(_$_RefreshList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$_RefreshList(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RefreshList implements _RefreshList {
  const _$_RefreshList({this.token});

  @override
  final String? token;

  @override
  String toString() {
    return 'HomePageEvent.refreshList(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshList &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshListCopyWith<_$_RefreshList> get copyWith =>
      __$$_RefreshListCopyWithImpl<_$_RefreshList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) started,
    required TResult Function(
            String ingredient, String? token, dynamic Function() afterFinished)
        addIngredient,
    required TResult Function(Ingredient ingredient, String? token)
        deleteIngredient,
    required TResult Function(int recipeId, bool? isSaved) changeSaveStatus,
    required TResult Function(String? token) refreshList,
  }) {
    return refreshList(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? token)? started,
    TResult? Function(
            String ingredient, String? token, dynamic Function() afterFinished)?
        addIngredient,
    TResult? Function(Ingredient ingredient, String? token)? deleteIngredient,
    TResult? Function(int recipeId, bool? isSaved)? changeSaveStatus,
    TResult? Function(String? token)? refreshList,
  }) {
    return refreshList?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? started,
    TResult Function(
            String ingredient, String? token, dynamic Function() afterFinished)?
        addIngredient,
    TResult Function(Ingredient ingredient, String? token)? deleteIngredient,
    TResult Function(int recipeId, bool? isSaved)? changeSaveStatus,
    TResult Function(String? token)? refreshList,
    required TResult orElse(),
  }) {
    if (refreshList != null) {
      return refreshList(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_ChangeSaveStatus value) changeSaveStatus,
    required TResult Function(_RefreshList value) refreshList,
  }) {
    return refreshList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_ChangeSaveStatus value)? changeSaveStatus,
    TResult? Function(_RefreshList value)? refreshList,
  }) {
    return refreshList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_ChangeSaveStatus value)? changeSaveStatus,
    TResult Function(_RefreshList value)? refreshList,
    required TResult orElse(),
  }) {
    if (refreshList != null) {
      return refreshList(this);
    }
    return orElse();
  }
}

abstract class _RefreshList implements HomePageEvent {
  const factory _RefreshList({final String? token}) = _$_RefreshList;

  String? get token;
  @JsonKey(ignore: true)
  _$$_RefreshListCopyWith<_$_RefreshList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomePageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Recipe> resultList, List<Ingredient> ingredients)
        loaded,
    required TResult Function(String? message, List<Ingredient> ingredients)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Recipe> resultList, List<Ingredient> ingredients)?
        loaded,
    TResult? Function(String? message, List<Ingredient> ingredients)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Recipe> resultList, List<Ingredient> ingredients)?
        loaded,
    TResult Function(String? message, List<Ingredient> ingredients)? failed,
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
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

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
    extends _$HomePageStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'HomePageState.initial()';
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
            List<Recipe> resultList, List<Ingredient> ingredients)
        loaded,
    required TResult Function(String? message, List<Ingredient> ingredients)
        failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Recipe> resultList, List<Ingredient> ingredients)?
        loaded,
    TResult? Function(String? message, List<Ingredient> ingredients)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Recipe> resultList, List<Ingredient> ingredients)?
        loaded,
    TResult Function(String? message, List<Ingredient> ingredients)? failed,
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

abstract class _Initial implements HomePageState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Recipe> resultList, List<Ingredient> ingredients});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultList = null,
    Object? ingredients = null,
  }) {
    return _then(_$_Loaded(
      resultList: null == resultList
          ? _value._resultList
          : resultList // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required final List<Recipe> resultList,
      required final List<Ingredient> ingredients})
      : _resultList = resultList,
        _ingredients = ingredients;

  final List<Recipe> _resultList;
  @override
  List<Recipe> get resultList {
    if (_resultList is EqualUnmodifiableListView) return _resultList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resultList);
  }

  final List<Ingredient> _ingredients;
  @override
  List<Ingredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'HomePageState.loaded(resultList: $resultList, ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality()
                .equals(other._resultList, _resultList) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_resultList),
      const DeepCollectionEquality().hash(_ingredients));

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
            List<Recipe> resultList, List<Ingredient> ingredients)
        loaded,
    required TResult Function(String? message, List<Ingredient> ingredients)
        failed,
  }) {
    return loaded(resultList, ingredients);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Recipe> resultList, List<Ingredient> ingredients)?
        loaded,
    TResult? Function(String? message, List<Ingredient> ingredients)? failed,
  }) {
    return loaded?.call(resultList, ingredients);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Recipe> resultList, List<Ingredient> ingredients)?
        loaded,
    TResult Function(String? message, List<Ingredient> ingredients)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(resultList, ingredients);
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

abstract class _Loaded implements HomePageState {
  const factory _Loaded(
      {required final List<Recipe> resultList,
      required final List<Ingredient> ingredients}) = _$_Loaded;

  List<Recipe> get resultList;
  List<Ingredient> get ingredients;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailedCopyWith<$Res> {
  factory _$$_FailedCopyWith(_$_Failed value, $Res Function(_$_Failed) then) =
      __$$_FailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, List<Ingredient> ingredients});
}

/// @nodoc
class __$$_FailedCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$_Failed>
    implements _$$_FailedCopyWith<$Res> {
  __$$_FailedCopyWithImpl(_$_Failed _value, $Res Function(_$_Failed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? ingredients = null,
  }) {
    return _then(_$_Failed(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
    ));
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed({this.message, required final List<Ingredient> ingredients})
      : _ingredients = ingredients;

  @override
  final String? message;
  final List<Ingredient> _ingredients;
  @override
  List<Ingredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'HomePageState.failed(message: $message, ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failed &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      __$$_FailedCopyWithImpl<_$_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Recipe> resultList, List<Ingredient> ingredients)
        loaded,
    required TResult Function(String? message, List<Ingredient> ingredients)
        failed,
  }) {
    return failed(message, ingredients);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Recipe> resultList, List<Ingredient> ingredients)?
        loaded,
    TResult? Function(String? message, List<Ingredient> ingredients)? failed,
  }) {
    return failed?.call(message, ingredients);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Recipe> resultList, List<Ingredient> ingredients)?
        loaded,
    TResult Function(String? message, List<Ingredient> ingredients)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message, ingredients);
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

abstract class _Failed implements HomePageState {
  const factory _Failed(
      {final String? message,
      required final List<Ingredient> ingredients}) = _$_Failed;

  String? get message;
  List<Ingredient> get ingredients;
  @JsonKey(ignore: true)
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      throw _privateConstructorUsedError;
}
