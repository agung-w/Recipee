// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_recipe_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateRecipeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient) addIngredient,
    required TResult Function(RecipeIngredient ingredient, String name)
        editIngredientName,
    required TResult Function(RecipeIngredient ingredient, int? quantity)
        editIngredientQuantity,
    required TResult Function(RecipeIngredient ingredient, Metric? metric)
        editIngredientMetric,
    required TResult Function(RecipeIngredient ingredient) deleteIngredient,
    required TResult Function() addCookingStep,
    required TResult Function(CookingStep cookingStep, String description)
        editCookingStepDescription,
    required TResult Function(CookingStep cookingStep, String? picUrl)
        editCookingStepPic,
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient)? addIngredient,
    TResult? Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult? Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult? Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult? Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult? Function()? addCookingStep,
    TResult? Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult? Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient)? addIngredient,
    TResult Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult Function()? addCookingStep,
    TResult Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRecipeEventCopyWith<$Res> {
  factory $CreateRecipeEventCopyWith(
          CreateRecipeEvent value, $Res Function(CreateRecipeEvent) then) =
      _$CreateRecipeEventCopyWithImpl<$Res, CreateRecipeEvent>;
}

/// @nodoc
class _$CreateRecipeEventCopyWithImpl<$Res, $Val extends CreateRecipeEvent>
    implements $CreateRecipeEventCopyWith<$Res> {
  _$CreateRecipeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CreateCopyWith<$Res> {
  factory _$$_CreateCopyWith(_$_Create value, $Res Function(_$_Create) then) =
      __$$_CreateCopyWithImpl<$Res>;
  @useResult
  $Res call({UserAuthenticationState state, BuildContext context});

  $UserAuthenticationStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_CreateCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$_Create>
    implements _$$_CreateCopyWith<$Res> {
  __$$_CreateCopyWithImpl(_$_Create _value, $Res Function(_$_Create) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? context = null,
  }) {
    return _then(_$_Create(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as UserAuthenticationState,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserAuthenticationStateCopyWith<$Res> get state {
    return $UserAuthenticationStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_Create implements _Create {
  const _$_Create({required this.state, required this.context});

  @override
  final UserAuthenticationState state;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CreateRecipeEvent.create(state: $state, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Create &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateCopyWith<_$_Create> get copyWith =>
      __$$_CreateCopyWithImpl<_$_Create>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient) addIngredient,
    required TResult Function(RecipeIngredient ingredient, String name)
        editIngredientName,
    required TResult Function(RecipeIngredient ingredient, int? quantity)
        editIngredientQuantity,
    required TResult Function(RecipeIngredient ingredient, Metric? metric)
        editIngredientMetric,
    required TResult Function(RecipeIngredient ingredient) deleteIngredient,
    required TResult Function() addCookingStep,
    required TResult Function(CookingStep cookingStep, String description)
        editCookingStepDescription,
    required TResult Function(CookingStep cookingStep, String? picUrl)
        editCookingStepPic,
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function() submit,
  }) {
    return create(state, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient)? addIngredient,
    TResult? Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult? Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult? Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult? Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult? Function()? addCookingStep,
    TResult? Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult? Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function()? submit,
  }) {
    return create?.call(state, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient)? addIngredient,
    TResult Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult Function()? addCookingStep,
    TResult Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(state, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_Submit value) submit,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_Submit value)? submit,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements CreateRecipeEvent {
  const factory _Create(
      {required final UserAuthenticationState state,
      required final BuildContext context}) = _$_Create;

  UserAuthenticationState get state;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_CreateCopyWith<_$_Create> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddIngredientCopyWith<$Res> {
  factory _$$_AddIngredientCopyWith(
          _$_AddIngredient value, $Res Function(_$_AddIngredient) then) =
      __$$_AddIngredientCopyWithImpl<$Res>;
  @useResult
  $Res call({String ingredient});
}

/// @nodoc
class __$$_AddIngredientCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$_AddIngredient>
    implements _$$_AddIngredientCopyWith<$Res> {
  __$$_AddIngredientCopyWithImpl(
      _$_AddIngredient _value, $Res Function(_$_AddIngredient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = null,
  }) {
    return _then(_$_AddIngredient(
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddIngredient implements _AddIngredient {
  const _$_AddIngredient({required this.ingredient});

  @override
  final String ingredient;

  @override
  String toString() {
    return 'CreateRecipeEvent.addIngredient(ingredient: $ingredient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddIngredient &&
            (identical(other.ingredient, ingredient) ||
                other.ingredient == ingredient));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ingredient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddIngredientCopyWith<_$_AddIngredient> get copyWith =>
      __$$_AddIngredientCopyWithImpl<_$_AddIngredient>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient) addIngredient,
    required TResult Function(RecipeIngredient ingredient, String name)
        editIngredientName,
    required TResult Function(RecipeIngredient ingredient, int? quantity)
        editIngredientQuantity,
    required TResult Function(RecipeIngredient ingredient, Metric? metric)
        editIngredientMetric,
    required TResult Function(RecipeIngredient ingredient) deleteIngredient,
    required TResult Function() addCookingStep,
    required TResult Function(CookingStep cookingStep, String description)
        editCookingStepDescription,
    required TResult Function(CookingStep cookingStep, String? picUrl)
        editCookingStepPic,
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function() submit,
  }) {
    return addIngredient(ingredient);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient)? addIngredient,
    TResult? Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult? Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult? Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult? Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult? Function()? addCookingStep,
    TResult? Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult? Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function()? submit,
  }) {
    return addIngredient?.call(ingredient);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient)? addIngredient,
    TResult Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult Function()? addCookingStep,
    TResult Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (addIngredient != null) {
      return addIngredient(ingredient);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_Submit value) submit,
  }) {
    return addIngredient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_Submit value)? submit,
  }) {
    return addIngredient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (addIngredient != null) {
      return addIngredient(this);
    }
    return orElse();
  }
}

abstract class _AddIngredient implements CreateRecipeEvent {
  const factory _AddIngredient({required final String ingredient}) =
      _$_AddIngredient;

  String get ingredient;
  @JsonKey(ignore: true)
  _$$_AddIngredientCopyWith<_$_AddIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditIngredientNameCopyWith<$Res> {
  factory _$$_EditIngredientNameCopyWith(_$_EditIngredientName value,
          $Res Function(_$_EditIngredientName) then) =
      __$$_EditIngredientNameCopyWithImpl<$Res>;
  @useResult
  $Res call({RecipeIngredient ingredient, String name});
}

/// @nodoc
class __$$_EditIngredientNameCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$_EditIngredientName>
    implements _$$_EditIngredientNameCopyWith<$Res> {
  __$$_EditIngredientNameCopyWithImpl(
      _$_EditIngredientName _value, $Res Function(_$_EditIngredientName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = null,
    Object? name = null,
  }) {
    return _then(_$_EditIngredientName(
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as RecipeIngredient,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditIngredientName implements _EditIngredientName {
  const _$_EditIngredientName({required this.ingredient, required this.name});

  @override
  final RecipeIngredient ingredient;
  @override
  final String name;

  @override
  String toString() {
    return 'CreateRecipeEvent.editIngredientName(ingredient: $ingredient, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditIngredientName &&
            (identical(other.ingredient, ingredient) ||
                other.ingredient == ingredient) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ingredient, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditIngredientNameCopyWith<_$_EditIngredientName> get copyWith =>
      __$$_EditIngredientNameCopyWithImpl<_$_EditIngredientName>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient) addIngredient,
    required TResult Function(RecipeIngredient ingredient, String name)
        editIngredientName,
    required TResult Function(RecipeIngredient ingredient, int? quantity)
        editIngredientQuantity,
    required TResult Function(RecipeIngredient ingredient, Metric? metric)
        editIngredientMetric,
    required TResult Function(RecipeIngredient ingredient) deleteIngredient,
    required TResult Function() addCookingStep,
    required TResult Function(CookingStep cookingStep, String description)
        editCookingStepDescription,
    required TResult Function(CookingStep cookingStep, String? picUrl)
        editCookingStepPic,
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function() submit,
  }) {
    return editIngredientName(ingredient, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient)? addIngredient,
    TResult? Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult? Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult? Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult? Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult? Function()? addCookingStep,
    TResult? Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult? Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function()? submit,
  }) {
    return editIngredientName?.call(ingredient, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient)? addIngredient,
    TResult Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult Function()? addCookingStep,
    TResult Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (editIngredientName != null) {
      return editIngredientName(ingredient, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_Submit value) submit,
  }) {
    return editIngredientName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_Submit value)? submit,
  }) {
    return editIngredientName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (editIngredientName != null) {
      return editIngredientName(this);
    }
    return orElse();
  }
}

abstract class _EditIngredientName implements CreateRecipeEvent {
  const factory _EditIngredientName(
      {required final RecipeIngredient ingredient,
      required final String name}) = _$_EditIngredientName;

  RecipeIngredient get ingredient;
  String get name;
  @JsonKey(ignore: true)
  _$$_EditIngredientNameCopyWith<_$_EditIngredientName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditIngredientQuantityCopyWith<$Res> {
  factory _$$_EditIngredientQuantityCopyWith(_$_EditIngredientQuantity value,
          $Res Function(_$_EditIngredientQuantity) then) =
      __$$_EditIngredientQuantityCopyWithImpl<$Res>;
  @useResult
  $Res call({RecipeIngredient ingredient, int? quantity});
}

/// @nodoc
class __$$_EditIngredientQuantityCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$_EditIngredientQuantity>
    implements _$$_EditIngredientQuantityCopyWith<$Res> {
  __$$_EditIngredientQuantityCopyWithImpl(_$_EditIngredientQuantity _value,
      $Res Function(_$_EditIngredientQuantity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = null,
    Object? quantity = freezed,
  }) {
    return _then(_$_EditIngredientQuantity(
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as RecipeIngredient,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_EditIngredientQuantity implements _EditIngredientQuantity {
  const _$_EditIngredientQuantity(
      {required this.ingredient, required this.quantity});

  @override
  final RecipeIngredient ingredient;
  @override
  final int? quantity;

  @override
  String toString() {
    return 'CreateRecipeEvent.editIngredientQuantity(ingredient: $ingredient, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditIngredientQuantity &&
            (identical(other.ingredient, ingredient) ||
                other.ingredient == ingredient) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ingredient, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditIngredientQuantityCopyWith<_$_EditIngredientQuantity> get copyWith =>
      __$$_EditIngredientQuantityCopyWithImpl<_$_EditIngredientQuantity>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient) addIngredient,
    required TResult Function(RecipeIngredient ingredient, String name)
        editIngredientName,
    required TResult Function(RecipeIngredient ingredient, int? quantity)
        editIngredientQuantity,
    required TResult Function(RecipeIngredient ingredient, Metric? metric)
        editIngredientMetric,
    required TResult Function(RecipeIngredient ingredient) deleteIngredient,
    required TResult Function() addCookingStep,
    required TResult Function(CookingStep cookingStep, String description)
        editCookingStepDescription,
    required TResult Function(CookingStep cookingStep, String? picUrl)
        editCookingStepPic,
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function() submit,
  }) {
    return editIngredientQuantity(ingredient, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient)? addIngredient,
    TResult? Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult? Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult? Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult? Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult? Function()? addCookingStep,
    TResult? Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult? Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function()? submit,
  }) {
    return editIngredientQuantity?.call(ingredient, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient)? addIngredient,
    TResult Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult Function()? addCookingStep,
    TResult Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (editIngredientQuantity != null) {
      return editIngredientQuantity(ingredient, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_Submit value) submit,
  }) {
    return editIngredientQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_Submit value)? submit,
  }) {
    return editIngredientQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (editIngredientQuantity != null) {
      return editIngredientQuantity(this);
    }
    return orElse();
  }
}

abstract class _EditIngredientQuantity implements CreateRecipeEvent {
  const factory _EditIngredientQuantity(
      {required final RecipeIngredient ingredient,
      required final int? quantity}) = _$_EditIngredientQuantity;

  RecipeIngredient get ingredient;
  int? get quantity;
  @JsonKey(ignore: true)
  _$$_EditIngredientQuantityCopyWith<_$_EditIngredientQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditIngredientMetricCopyWith<$Res> {
  factory _$$_EditIngredientMetricCopyWith(_$_EditIngredientMetric value,
          $Res Function(_$_EditIngredientMetric) then) =
      __$$_EditIngredientMetricCopyWithImpl<$Res>;
  @useResult
  $Res call({RecipeIngredient ingredient, Metric? metric});
}

/// @nodoc
class __$$_EditIngredientMetricCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$_EditIngredientMetric>
    implements _$$_EditIngredientMetricCopyWith<$Res> {
  __$$_EditIngredientMetricCopyWithImpl(_$_EditIngredientMetric _value,
      $Res Function(_$_EditIngredientMetric) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = null,
    Object? metric = freezed,
  }) {
    return _then(_$_EditIngredientMetric(
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as RecipeIngredient,
      metric: freezed == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as Metric?,
    ));
  }
}

/// @nodoc

class _$_EditIngredientMetric implements _EditIngredientMetric {
  const _$_EditIngredientMetric(
      {required this.ingredient, required this.metric});

  @override
  final RecipeIngredient ingredient;
  @override
  final Metric? metric;

  @override
  String toString() {
    return 'CreateRecipeEvent.editIngredientMetric(ingredient: $ingredient, metric: $metric)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditIngredientMetric &&
            (identical(other.ingredient, ingredient) ||
                other.ingredient == ingredient) &&
            (identical(other.metric, metric) || other.metric == metric));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ingredient, metric);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditIngredientMetricCopyWith<_$_EditIngredientMetric> get copyWith =>
      __$$_EditIngredientMetricCopyWithImpl<_$_EditIngredientMetric>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient) addIngredient,
    required TResult Function(RecipeIngredient ingredient, String name)
        editIngredientName,
    required TResult Function(RecipeIngredient ingredient, int? quantity)
        editIngredientQuantity,
    required TResult Function(RecipeIngredient ingredient, Metric? metric)
        editIngredientMetric,
    required TResult Function(RecipeIngredient ingredient) deleteIngredient,
    required TResult Function() addCookingStep,
    required TResult Function(CookingStep cookingStep, String description)
        editCookingStepDescription,
    required TResult Function(CookingStep cookingStep, String? picUrl)
        editCookingStepPic,
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function() submit,
  }) {
    return editIngredientMetric(ingredient, metric);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient)? addIngredient,
    TResult? Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult? Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult? Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult? Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult? Function()? addCookingStep,
    TResult? Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult? Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function()? submit,
  }) {
    return editIngredientMetric?.call(ingredient, metric);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient)? addIngredient,
    TResult Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult Function()? addCookingStep,
    TResult Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (editIngredientMetric != null) {
      return editIngredientMetric(ingredient, metric);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_Submit value) submit,
  }) {
    return editIngredientMetric(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_Submit value)? submit,
  }) {
    return editIngredientMetric?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (editIngredientMetric != null) {
      return editIngredientMetric(this);
    }
    return orElse();
  }
}

abstract class _EditIngredientMetric implements CreateRecipeEvent {
  const factory _EditIngredientMetric(
      {required final RecipeIngredient ingredient,
      required final Metric? metric}) = _$_EditIngredientMetric;

  RecipeIngredient get ingredient;
  Metric? get metric;
  @JsonKey(ignore: true)
  _$$_EditIngredientMetricCopyWith<_$_EditIngredientMetric> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteIngredientCopyWith<$Res> {
  factory _$$_DeleteIngredientCopyWith(
          _$_DeleteIngredient value, $Res Function(_$_DeleteIngredient) then) =
      __$$_DeleteIngredientCopyWithImpl<$Res>;
  @useResult
  $Res call({RecipeIngredient ingredient});
}

/// @nodoc
class __$$_DeleteIngredientCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$_DeleteIngredient>
    implements _$$_DeleteIngredientCopyWith<$Res> {
  __$$_DeleteIngredientCopyWithImpl(
      _$_DeleteIngredient _value, $Res Function(_$_DeleteIngredient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = null,
  }) {
    return _then(_$_DeleteIngredient(
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as RecipeIngredient,
    ));
  }
}

/// @nodoc

class _$_DeleteIngredient implements _DeleteIngredient {
  const _$_DeleteIngredient({required this.ingredient});

  @override
  final RecipeIngredient ingredient;

  @override
  String toString() {
    return 'CreateRecipeEvent.deleteIngredient(ingredient: $ingredient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteIngredient &&
            (identical(other.ingredient, ingredient) ||
                other.ingredient == ingredient));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ingredient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteIngredientCopyWith<_$_DeleteIngredient> get copyWith =>
      __$$_DeleteIngredientCopyWithImpl<_$_DeleteIngredient>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient) addIngredient,
    required TResult Function(RecipeIngredient ingredient, String name)
        editIngredientName,
    required TResult Function(RecipeIngredient ingredient, int? quantity)
        editIngredientQuantity,
    required TResult Function(RecipeIngredient ingredient, Metric? metric)
        editIngredientMetric,
    required TResult Function(RecipeIngredient ingredient) deleteIngredient,
    required TResult Function() addCookingStep,
    required TResult Function(CookingStep cookingStep, String description)
        editCookingStepDescription,
    required TResult Function(CookingStep cookingStep, String? picUrl)
        editCookingStepPic,
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function() submit,
  }) {
    return deleteIngredient(ingredient);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient)? addIngredient,
    TResult? Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult? Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult? Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult? Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult? Function()? addCookingStep,
    TResult? Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult? Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function()? submit,
  }) {
    return deleteIngredient?.call(ingredient);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient)? addIngredient,
    TResult Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult Function()? addCookingStep,
    TResult Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (deleteIngredient != null) {
      return deleteIngredient(ingredient);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_Submit value) submit,
  }) {
    return deleteIngredient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_Submit value)? submit,
  }) {
    return deleteIngredient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (deleteIngredient != null) {
      return deleteIngredient(this);
    }
    return orElse();
  }
}

abstract class _DeleteIngredient implements CreateRecipeEvent {
  const factory _DeleteIngredient(
      {required final RecipeIngredient ingredient}) = _$_DeleteIngredient;

  RecipeIngredient get ingredient;
  @JsonKey(ignore: true)
  _$$_DeleteIngredientCopyWith<_$_DeleteIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddCookingStepCopyWith<$Res> {
  factory _$$_AddCookingStepCopyWith(
          _$_AddCookingStep value, $Res Function(_$_AddCookingStep) then) =
      __$$_AddCookingStepCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddCookingStepCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$_AddCookingStep>
    implements _$$_AddCookingStepCopyWith<$Res> {
  __$$_AddCookingStepCopyWithImpl(
      _$_AddCookingStep _value, $Res Function(_$_AddCookingStep) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AddCookingStep implements _AddCookingStep {
  const _$_AddCookingStep();

  @override
  String toString() {
    return 'CreateRecipeEvent.addCookingStep()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddCookingStep);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient) addIngredient,
    required TResult Function(RecipeIngredient ingredient, String name)
        editIngredientName,
    required TResult Function(RecipeIngredient ingredient, int? quantity)
        editIngredientQuantity,
    required TResult Function(RecipeIngredient ingredient, Metric? metric)
        editIngredientMetric,
    required TResult Function(RecipeIngredient ingredient) deleteIngredient,
    required TResult Function() addCookingStep,
    required TResult Function(CookingStep cookingStep, String description)
        editCookingStepDescription,
    required TResult Function(CookingStep cookingStep, String? picUrl)
        editCookingStepPic,
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function() submit,
  }) {
    return addCookingStep();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient)? addIngredient,
    TResult? Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult? Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult? Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult? Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult? Function()? addCookingStep,
    TResult? Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult? Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function()? submit,
  }) {
    return addCookingStep?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient)? addIngredient,
    TResult Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult Function()? addCookingStep,
    TResult Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (addCookingStep != null) {
      return addCookingStep();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_Submit value) submit,
  }) {
    return addCookingStep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_Submit value)? submit,
  }) {
    return addCookingStep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (addCookingStep != null) {
      return addCookingStep(this);
    }
    return orElse();
  }
}

abstract class _AddCookingStep implements CreateRecipeEvent {
  const factory _AddCookingStep() = _$_AddCookingStep;
}

/// @nodoc
abstract class _$$_EditCookingStepDescriptionCopyWith<$Res> {
  factory _$$_EditCookingStepDescriptionCopyWith(
          _$_EditCookingStepDescription value,
          $Res Function(_$_EditCookingStepDescription) then) =
      __$$_EditCookingStepDescriptionCopyWithImpl<$Res>;
  @useResult
  $Res call({CookingStep cookingStep, String description});
}

/// @nodoc
class __$$_EditCookingStepDescriptionCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$_EditCookingStepDescription>
    implements _$$_EditCookingStepDescriptionCopyWith<$Res> {
  __$$_EditCookingStepDescriptionCopyWithImpl(
      _$_EditCookingStepDescription _value,
      $Res Function(_$_EditCookingStepDescription) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cookingStep = null,
    Object? description = null,
  }) {
    return _then(_$_EditCookingStepDescription(
      cookingStep: null == cookingStep
          ? _value.cookingStep
          : cookingStep // ignore: cast_nullable_to_non_nullable
              as CookingStep,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditCookingStepDescription implements _EditCookingStepDescription {
  const _$_EditCookingStepDescription(
      {required this.cookingStep, required this.description});

  @override
  final CookingStep cookingStep;
  @override
  final String description;

  @override
  String toString() {
    return 'CreateRecipeEvent.editCookingStepDescription(cookingStep: $cookingStep, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditCookingStepDescription &&
            (identical(other.cookingStep, cookingStep) ||
                other.cookingStep == cookingStep) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cookingStep, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditCookingStepDescriptionCopyWith<_$_EditCookingStepDescription>
      get copyWith => __$$_EditCookingStepDescriptionCopyWithImpl<
          _$_EditCookingStepDescription>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient) addIngredient,
    required TResult Function(RecipeIngredient ingredient, String name)
        editIngredientName,
    required TResult Function(RecipeIngredient ingredient, int? quantity)
        editIngredientQuantity,
    required TResult Function(RecipeIngredient ingredient, Metric? metric)
        editIngredientMetric,
    required TResult Function(RecipeIngredient ingredient) deleteIngredient,
    required TResult Function() addCookingStep,
    required TResult Function(CookingStep cookingStep, String description)
        editCookingStepDescription,
    required TResult Function(CookingStep cookingStep, String? picUrl)
        editCookingStepPic,
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function() submit,
  }) {
    return editCookingStepDescription(cookingStep, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient)? addIngredient,
    TResult? Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult? Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult? Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult? Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult? Function()? addCookingStep,
    TResult? Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult? Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function()? submit,
  }) {
    return editCookingStepDescription?.call(cookingStep, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient)? addIngredient,
    TResult Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult Function()? addCookingStep,
    TResult Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (editCookingStepDescription != null) {
      return editCookingStepDescription(cookingStep, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_Submit value) submit,
  }) {
    return editCookingStepDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_Submit value)? submit,
  }) {
    return editCookingStepDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (editCookingStepDescription != null) {
      return editCookingStepDescription(this);
    }
    return orElse();
  }
}

abstract class _EditCookingStepDescription implements CreateRecipeEvent {
  const factory _EditCookingStepDescription(
      {required final CookingStep cookingStep,
      required final String description}) = _$_EditCookingStepDescription;

  CookingStep get cookingStep;
  String get description;
  @JsonKey(ignore: true)
  _$$_EditCookingStepDescriptionCopyWith<_$_EditCookingStepDescription>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditCookingStepPicCopyWith<$Res> {
  factory _$$_EditCookingStepPicCopyWith(_$_EditCookingStepPic value,
          $Res Function(_$_EditCookingStepPic) then) =
      __$$_EditCookingStepPicCopyWithImpl<$Res>;
  @useResult
  $Res call({CookingStep cookingStep, String? picUrl});
}

/// @nodoc
class __$$_EditCookingStepPicCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$_EditCookingStepPic>
    implements _$$_EditCookingStepPicCopyWith<$Res> {
  __$$_EditCookingStepPicCopyWithImpl(
      _$_EditCookingStepPic _value, $Res Function(_$_EditCookingStepPic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cookingStep = null,
    Object? picUrl = freezed,
  }) {
    return _then(_$_EditCookingStepPic(
      cookingStep: null == cookingStep
          ? _value.cookingStep
          : cookingStep // ignore: cast_nullable_to_non_nullable
              as CookingStep,
      picUrl: freezed == picUrl
          ? _value.picUrl
          : picUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_EditCookingStepPic implements _EditCookingStepPic {
  const _$_EditCookingStepPic(
      {required this.cookingStep, required this.picUrl});

  @override
  final CookingStep cookingStep;
  @override
  final String? picUrl;

  @override
  String toString() {
    return 'CreateRecipeEvent.editCookingStepPic(cookingStep: $cookingStep, picUrl: $picUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditCookingStepPic &&
            (identical(other.cookingStep, cookingStep) ||
                other.cookingStep == cookingStep) &&
            (identical(other.picUrl, picUrl) || other.picUrl == picUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cookingStep, picUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditCookingStepPicCopyWith<_$_EditCookingStepPic> get copyWith =>
      __$$_EditCookingStepPicCopyWithImpl<_$_EditCookingStepPic>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient) addIngredient,
    required TResult Function(RecipeIngredient ingredient, String name)
        editIngredientName,
    required TResult Function(RecipeIngredient ingredient, int? quantity)
        editIngredientQuantity,
    required TResult Function(RecipeIngredient ingredient, Metric? metric)
        editIngredientMetric,
    required TResult Function(RecipeIngredient ingredient) deleteIngredient,
    required TResult Function() addCookingStep,
    required TResult Function(CookingStep cookingStep, String description)
        editCookingStepDescription,
    required TResult Function(CookingStep cookingStep, String? picUrl)
        editCookingStepPic,
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function() submit,
  }) {
    return editCookingStepPic(cookingStep, picUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient)? addIngredient,
    TResult? Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult? Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult? Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult? Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult? Function()? addCookingStep,
    TResult? Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult? Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function()? submit,
  }) {
    return editCookingStepPic?.call(cookingStep, picUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient)? addIngredient,
    TResult Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult Function()? addCookingStep,
    TResult Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (editCookingStepPic != null) {
      return editCookingStepPic(cookingStep, picUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_Submit value) submit,
  }) {
    return editCookingStepPic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_Submit value)? submit,
  }) {
    return editCookingStepPic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (editCookingStepPic != null) {
      return editCookingStepPic(this);
    }
    return orElse();
  }
}

abstract class _EditCookingStepPic implements CreateRecipeEvent {
  const factory _EditCookingStepPic(
      {required final CookingStep cookingStep,
      required final String? picUrl}) = _$_EditCookingStepPic;

  CookingStep get cookingStep;
  String? get picUrl;
  @JsonKey(ignore: true)
  _$$_EditCookingStepPicCopyWith<_$_EditCookingStepPic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCookingStepCopyWith<$Res> {
  factory _$$_DeleteCookingStepCopyWith(_$_DeleteCookingStep value,
          $Res Function(_$_DeleteCookingStep) then) =
      __$$_DeleteCookingStepCopyWithImpl<$Res>;
  @useResult
  $Res call({CookingStep cookingStep});
}

/// @nodoc
class __$$_DeleteCookingStepCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$_DeleteCookingStep>
    implements _$$_DeleteCookingStepCopyWith<$Res> {
  __$$_DeleteCookingStepCopyWithImpl(
      _$_DeleteCookingStep _value, $Res Function(_$_DeleteCookingStep) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cookingStep = null,
  }) {
    return _then(_$_DeleteCookingStep(
      cookingStep: null == cookingStep
          ? _value.cookingStep
          : cookingStep // ignore: cast_nullable_to_non_nullable
              as CookingStep,
    ));
  }
}

/// @nodoc

class _$_DeleteCookingStep implements _DeleteCookingStep {
  const _$_DeleteCookingStep({required this.cookingStep});

  @override
  final CookingStep cookingStep;

  @override
  String toString() {
    return 'CreateRecipeEvent.deleteCookingStep(cookingStep: $cookingStep)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteCookingStep &&
            (identical(other.cookingStep, cookingStep) ||
                other.cookingStep == cookingStep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cookingStep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCookingStepCopyWith<_$_DeleteCookingStep> get copyWith =>
      __$$_DeleteCookingStepCopyWithImpl<_$_DeleteCookingStep>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient) addIngredient,
    required TResult Function(RecipeIngredient ingredient, String name)
        editIngredientName,
    required TResult Function(RecipeIngredient ingredient, int? quantity)
        editIngredientQuantity,
    required TResult Function(RecipeIngredient ingredient, Metric? metric)
        editIngredientMetric,
    required TResult Function(RecipeIngredient ingredient) deleteIngredient,
    required TResult Function() addCookingStep,
    required TResult Function(CookingStep cookingStep, String description)
        editCookingStepDescription,
    required TResult Function(CookingStep cookingStep, String? picUrl)
        editCookingStepPic,
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function() submit,
  }) {
    return deleteCookingStep(cookingStep);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient)? addIngredient,
    TResult? Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult? Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult? Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult? Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult? Function()? addCookingStep,
    TResult? Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult? Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function()? submit,
  }) {
    return deleteCookingStep?.call(cookingStep);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient)? addIngredient,
    TResult Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult Function()? addCookingStep,
    TResult Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (deleteCookingStep != null) {
      return deleteCookingStep(cookingStep);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_Submit value) submit,
  }) {
    return deleteCookingStep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_Submit value)? submit,
  }) {
    return deleteCookingStep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (deleteCookingStep != null) {
      return deleteCookingStep(this);
    }
    return orElse();
  }
}

abstract class _DeleteCookingStep implements CreateRecipeEvent {
  const factory _DeleteCookingStep({required final CookingStep cookingStep}) =
      _$_DeleteCookingStep;

  CookingStep get cookingStep;
  @JsonKey(ignore: true)
  _$$_DeleteCookingStepCopyWith<_$_DeleteCookingStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitCopyWith<$Res> {
  factory _$$_SubmitCopyWith(_$_Submit value, $Res Function(_$_Submit) then) =
      __$$_SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmitCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$_Submit>
    implements _$$_SubmitCopyWith<$Res> {
  __$$_SubmitCopyWithImpl(_$_Submit _value, $Res Function(_$_Submit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Submit implements _Submit {
  const _$_Submit();

  @override
  String toString() {
    return 'CreateRecipeEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient) addIngredient,
    required TResult Function(RecipeIngredient ingredient, String name)
        editIngredientName,
    required TResult Function(RecipeIngredient ingredient, int? quantity)
        editIngredientQuantity,
    required TResult Function(RecipeIngredient ingredient, Metric? metric)
        editIngredientMetric,
    required TResult Function(RecipeIngredient ingredient) deleteIngredient,
    required TResult Function() addCookingStep,
    required TResult Function(CookingStep cookingStep, String description)
        editCookingStepDescription,
    required TResult Function(CookingStep cookingStep, String? picUrl)
        editCookingStepPic,
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient)? addIngredient,
    TResult? Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult? Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult? Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult? Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult? Function()? addCookingStep,
    TResult? Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult? Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient)? addIngredient,
    TResult Function(RecipeIngredient ingredient, String name)?
        editIngredientName,
    TResult Function(RecipeIngredient ingredient, int? quantity)?
        editIngredientQuantity,
    TResult Function(RecipeIngredient ingredient, Metric? metric)?
        editIngredientMetric,
    TResult Function(RecipeIngredient ingredient)? deleteIngredient,
    TResult Function()? addCookingStep,
    TResult Function(CookingStep cookingStep, String description)?
        editCookingStepDescription,
    TResult Function(CookingStep cookingStep, String? picUrl)?
        editCookingStepPic,
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements CreateRecipeEvent {
  const factory _Submit() = _$_Submit;
}

/// @nodoc
mixin _$CreateRecipeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            RecipeDetail recipe,
            String? error,
            List<IngredientFormTile> ingredientForms,
            List<CookingStepFormTile> cookingStepForms)
        creating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            RecipeDetail recipe,
            String? error,
            List<IngredientFormTile> ingredientForms,
            List<CookingStepFormTile> cookingStepForms)?
        creating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            RecipeDetail recipe,
            String? error,
            List<IngredientFormTile> ingredientForms,
            List<CookingStepFormTile> cookingStepForms)?
        creating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Creating value) creating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Creating value)? creating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRecipeStateCopyWith<$Res> {
  factory $CreateRecipeStateCopyWith(
          CreateRecipeState value, $Res Function(CreateRecipeState) then) =
      _$CreateRecipeStateCopyWithImpl<$Res, CreateRecipeState>;
}

/// @nodoc
class _$CreateRecipeStateCopyWithImpl<$Res, $Val extends CreateRecipeState>
    implements $CreateRecipeStateCopyWith<$Res> {
  _$CreateRecipeStateCopyWithImpl(this._value, this._then);

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
    extends _$CreateRecipeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CreateRecipeState.initial()';
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
            RecipeDetail recipe,
            String? error,
            List<IngredientFormTile> ingredientForms,
            List<CookingStepFormTile> cookingStepForms)
        creating,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            RecipeDetail recipe,
            String? error,
            List<IngredientFormTile> ingredientForms,
            List<CookingStepFormTile> cookingStepForms)?
        creating,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            RecipeDetail recipe,
            String? error,
            List<IngredientFormTile> ingredientForms,
            List<CookingStepFormTile> cookingStepForms)?
        creating,
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
    required TResult Function(_Creating value) creating,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Creating value)? creating,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateRecipeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_CreatingCopyWith<$Res> {
  factory _$$_CreatingCopyWith(
          _$_Creating value, $Res Function(_$_Creating) then) =
      __$$_CreatingCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {RecipeDetail recipe,
      String? error,
      List<IngredientFormTile> ingredientForms,
      List<CookingStepFormTile> cookingStepForms});
}

/// @nodoc
class __$$_CreatingCopyWithImpl<$Res>
    extends _$CreateRecipeStateCopyWithImpl<$Res, _$_Creating>
    implements _$$_CreatingCopyWith<$Res> {
  __$$_CreatingCopyWithImpl(
      _$_Creating _value, $Res Function(_$_Creating) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
    Object? error = freezed,
    Object? ingredientForms = null,
    Object? cookingStepForms = null,
  }) {
    return _then(_$_Creating(
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeDetail,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredientForms: null == ingredientForms
          ? _value._ingredientForms
          : ingredientForms // ignore: cast_nullable_to_non_nullable
              as List<IngredientFormTile>,
      cookingStepForms: null == cookingStepForms
          ? _value._cookingStepForms
          : cookingStepForms // ignore: cast_nullable_to_non_nullable
              as List<CookingStepFormTile>,
    ));
  }
}

/// @nodoc

class _$_Creating implements _Creating {
  const _$_Creating(
      {required this.recipe,
      this.error,
      required final List<IngredientFormTile> ingredientForms,
      required final List<CookingStepFormTile> cookingStepForms})
      : _ingredientForms = ingredientForms,
        _cookingStepForms = cookingStepForms;

  @override
  final RecipeDetail recipe;
  @override
  final String? error;
  final List<IngredientFormTile> _ingredientForms;
  @override
  List<IngredientFormTile> get ingredientForms {
    if (_ingredientForms is EqualUnmodifiableListView) return _ingredientForms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientForms);
  }

  final List<CookingStepFormTile> _cookingStepForms;
  @override
  List<CookingStepFormTile> get cookingStepForms {
    if (_cookingStepForms is EqualUnmodifiableListView)
      return _cookingStepForms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cookingStepForms);
  }

  @override
  String toString() {
    return 'CreateRecipeState.creating(recipe: $recipe, error: $error, ingredientForms: $ingredientForms, cookingStepForms: $cookingStepForms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Creating &&
            (identical(other.recipe, recipe) || other.recipe == recipe) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._ingredientForms, _ingredientForms) &&
            const DeepCollectionEquality()
                .equals(other._cookingStepForms, _cookingStepForms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      recipe,
      error,
      const DeepCollectionEquality().hash(_ingredientForms),
      const DeepCollectionEquality().hash(_cookingStepForms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatingCopyWith<_$_Creating> get copyWith =>
      __$$_CreatingCopyWithImpl<_$_Creating>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            RecipeDetail recipe,
            String? error,
            List<IngredientFormTile> ingredientForms,
            List<CookingStepFormTile> cookingStepForms)
        creating,
  }) {
    return creating(recipe, error, ingredientForms, cookingStepForms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            RecipeDetail recipe,
            String? error,
            List<IngredientFormTile> ingredientForms,
            List<CookingStepFormTile> cookingStepForms)?
        creating,
  }) {
    return creating?.call(recipe, error, ingredientForms, cookingStepForms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            RecipeDetail recipe,
            String? error,
            List<IngredientFormTile> ingredientForms,
            List<CookingStepFormTile> cookingStepForms)?
        creating,
    required TResult orElse(),
  }) {
    if (creating != null) {
      return creating(recipe, error, ingredientForms, cookingStepForms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Creating value) creating,
  }) {
    return creating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Creating value)? creating,
  }) {
    return creating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    required TResult orElse(),
  }) {
    if (creating != null) {
      return creating(this);
    }
    return orElse();
  }
}

abstract class _Creating implements CreateRecipeState {
  const factory _Creating(
      {required final RecipeDetail recipe,
      final String? error,
      required final List<IngredientFormTile> ingredientForms,
      required final List<CookingStepFormTile> cookingStepForms}) = _$_Creating;

  RecipeDetail get recipe;
  String? get error;
  List<IngredientFormTile> get ingredientForms;
  List<CookingStepFormTile> get cookingStepForms;
  @JsonKey(ignore: true)
  _$$_CreatingCopyWith<_$_Creating> get copyWith =>
      throw _privateConstructorUsedError;
}
