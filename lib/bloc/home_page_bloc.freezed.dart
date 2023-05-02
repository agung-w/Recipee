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
  List<String> get ingredients => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> ingredients, String? token)
        getRecipeByIngredients,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> ingredients, String? token)?
        getRecipeByIngredients,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> ingredients, String? token)?
        getRecipeByIngredients,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecipeByIngredients value)
        getRecipeByIngredients,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecipeByIngredients value)? getRecipeByIngredients,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecipeByIngredients value)? getRecipeByIngredients,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageEventCopyWith<HomePageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageEventCopyWith<$Res> {
  factory $HomePageEventCopyWith(
          HomePageEvent value, $Res Function(HomePageEvent) then) =
      _$HomePageEventCopyWithImpl<$Res, HomePageEvent>;
  @useResult
  $Res call({List<String> ingredients, String? token});
}

/// @nodoc
class _$HomePageEventCopyWithImpl<$Res, $Val extends HomePageEvent>
    implements $HomePageEventCopyWith<$Res> {
  _$HomePageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredients = null,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetRecipeByIngredientsCopyWith<$Res>
    implements $HomePageEventCopyWith<$Res> {
  factory _$$_GetRecipeByIngredientsCopyWith(_$_GetRecipeByIngredients value,
          $Res Function(_$_GetRecipeByIngredients) then) =
      __$$_GetRecipeByIngredientsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> ingredients, String? token});
}

/// @nodoc
class __$$_GetRecipeByIngredientsCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res, _$_GetRecipeByIngredients>
    implements _$$_GetRecipeByIngredientsCopyWith<$Res> {
  __$$_GetRecipeByIngredientsCopyWithImpl(_$_GetRecipeByIngredients _value,
      $Res Function(_$_GetRecipeByIngredients) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredients = null,
    Object? token = freezed,
  }) {
    return _then(_$_GetRecipeByIngredients(
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetRecipeByIngredients implements _GetRecipeByIngredients {
  const _$_GetRecipeByIngredients(
      {required final List<String> ingredients, this.token})
      : _ingredients = ingredients;

  final List<String> _ingredients;
  @override
  List<String> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  final String? token;

  @override
  String toString() {
    return 'HomePageEvent.getRecipeByIngredients(ingredients: $ingredients, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetRecipeByIngredients &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ingredients), token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetRecipeByIngredientsCopyWith<_$_GetRecipeByIngredients> get copyWith =>
      __$$_GetRecipeByIngredientsCopyWithImpl<_$_GetRecipeByIngredients>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> ingredients, String? token)
        getRecipeByIngredients,
  }) {
    return getRecipeByIngredients(ingredients, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> ingredients, String? token)?
        getRecipeByIngredients,
  }) {
    return getRecipeByIngredients?.call(ingredients, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> ingredients, String? token)?
        getRecipeByIngredients,
    required TResult orElse(),
  }) {
    if (getRecipeByIngredients != null) {
      return getRecipeByIngredients(ingredients, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecipeByIngredients value)
        getRecipeByIngredients,
  }) {
    return getRecipeByIngredients(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecipeByIngredients value)? getRecipeByIngredients,
  }) {
    return getRecipeByIngredients?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecipeByIngredients value)? getRecipeByIngredients,
    required TResult orElse(),
  }) {
    if (getRecipeByIngredients != null) {
      return getRecipeByIngredients(this);
    }
    return orElse();
  }
}

abstract class _GetRecipeByIngredients implements HomePageEvent {
  const factory _GetRecipeByIngredients(
      {required final List<String> ingredients,
      final String? token}) = _$_GetRecipeByIngredients;

  @override
  List<String> get ingredients;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_GetRecipeByIngredientsCopyWith<_$_GetRecipeByIngredients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomePageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Recipe> resultList) loaded,
    required TResult Function(String? message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Recipe> resultList)? loaded,
    TResult? Function(String? message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Recipe> resultList)? loaded,
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
    required TResult Function(List<Recipe> resultList) loaded,
    required TResult Function(String? message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Recipe> resultList)? loaded,
    TResult? Function(String? message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Recipe> resultList)? loaded,
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

abstract class _Initial implements HomePageState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Recipe> resultList});
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
  }) {
    return _then(_$_Loaded(
      resultList: null == resultList
          ? _value._resultList
          : resultList // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required final List<Recipe> resultList})
      : _resultList = resultList;

  final List<Recipe> _resultList;
  @override
  List<Recipe> get resultList {
    if (_resultList is EqualUnmodifiableListView) return _resultList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resultList);
  }

  @override
  String toString() {
    return 'HomePageState.loaded(resultList: $resultList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality()
                .equals(other._resultList, _resultList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_resultList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Recipe> resultList) loaded,
    required TResult Function(String? message) failed,
  }) {
    return loaded(resultList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Recipe> resultList)? loaded,
    TResult? Function(String? message)? failed,
  }) {
    return loaded?.call(resultList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Recipe> resultList)? loaded,
    TResult Function(String? message)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(resultList);
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
  const factory _Loaded({required final List<Recipe> resultList}) = _$_Loaded;

  List<Recipe> get resultList;
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
    extends _$HomePageStateCopyWithImpl<$Res, _$_Failed>
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
    return 'HomePageState.failed(message: $message)';
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
    required TResult Function(List<Recipe> resultList) loaded,
    required TResult Function(String? message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Recipe> resultList)? loaded,
    TResult? Function(String? message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Recipe> resultList)? loaded,
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

abstract class _Failed implements HomePageState {
  const factory _Failed({final String? message}) = _$_Failed;

  String? get message;
  @JsonKey(ignore: true)
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      throw _privateConstructorUsedError;
}
