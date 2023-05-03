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
    required TResult Function(String ingredient,
            TextEditingController controller, BuildContext context)
        addIngredient,
    required TResult Function(String title) editTitle,
    required TResult Function(String serving) editServing,
    required TResult Function(String prepTime) editPrepTime,
    required TResult Function(String description) editDescription,
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
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function(
            String tag, BuildContext context, TextEditingController controller)
        addTag,
    required TResult Function(Tag tag) deleteTag,
    required TResult Function(
            BuildContext context, UserAuthenticationState authState)
        submit,
    required TResult Function(XFile? file) addRecipePoster,
    required TResult Function(XFile? file, CookingStep cookingStep)
        editCookingStepPic,
    required TResult Function(String picUrl, BuildContext context) deletePoster,
    required TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)
        deleteCookingStepPic,
    required TResult Function(BuildContext context) cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult? Function(String title)? editTitle,
    TResult? Function(String serving)? editServing,
    TResult? Function(String prepTime)? editPrepTime,
    TResult? Function(String description)? editDescription,
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
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult? Function(Tag tag)? deleteTag,
    TResult? Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult? Function(XFile? file)? addRecipePoster,
    TResult? Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult? Function(String picUrl, BuildContext context)? deletePoster,
    TResult? Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult? Function(BuildContext context)? cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult Function(String title)? editTitle,
    TResult Function(String serving)? editServing,
    TResult Function(String prepTime)? editPrepTime,
    TResult Function(String description)? editDescription,
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
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult Function(Tag tag)? deleteTag,
    TResult Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult Function(XFile? file)? addRecipePoster,
    TResult Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult Function(String picUrl, BuildContext context)? deletePoster,
    TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult Function(BuildContext context)? cancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditTitle value) editTitle,
    required TResult Function(_EditServing value) editServing,
    required TResult Function(_EditPrepTime value) editPrepTime,
    required TResult Function(_EditDescription value) editDescription,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_DeleteTag value) deleteTag,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddRecipePoster value) addRecipePoster,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeletePoster value) deletePoster,
    required TResult Function(_DeleteCookingStepPic value) deleteCookingStepPic,
    required TResult Function(_Cancel value) cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditTitle value)? editTitle,
    TResult? Function(_EditServing value)? editServing,
    TResult? Function(_EditPrepTime value)? editPrepTime,
    TResult? Function(_EditDescription value)? editDescription,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_DeleteTag value)? deleteTag,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddRecipePoster value)? addRecipePoster,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeletePoster value)? deletePoster,
    TResult? Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult? Function(_Cancel value)? cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditTitle value)? editTitle,
    TResult Function(_EditServing value)? editServing,
    TResult Function(_EditPrepTime value)? editPrepTime,
    TResult Function(_EditDescription value)? editDescription,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_DeleteTag value)? deleteTag,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddRecipePoster value)? addRecipePoster,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeletePoster value)? deletePoster,
    TResult Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult Function(_Cancel value)? cancel,
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
    required TResult Function(String ingredient,
            TextEditingController controller, BuildContext context)
        addIngredient,
    required TResult Function(String title) editTitle,
    required TResult Function(String serving) editServing,
    required TResult Function(String prepTime) editPrepTime,
    required TResult Function(String description) editDescription,
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
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function(
            String tag, BuildContext context, TextEditingController controller)
        addTag,
    required TResult Function(Tag tag) deleteTag,
    required TResult Function(
            BuildContext context, UserAuthenticationState authState)
        submit,
    required TResult Function(XFile? file) addRecipePoster,
    required TResult Function(XFile? file, CookingStep cookingStep)
        editCookingStepPic,
    required TResult Function(String picUrl, BuildContext context) deletePoster,
    required TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)
        deleteCookingStepPic,
    required TResult Function(BuildContext context) cancel,
  }) {
    return create(state, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult? Function(String title)? editTitle,
    TResult? Function(String serving)? editServing,
    TResult? Function(String prepTime)? editPrepTime,
    TResult? Function(String description)? editDescription,
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
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult? Function(Tag tag)? deleteTag,
    TResult? Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult? Function(XFile? file)? addRecipePoster,
    TResult? Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult? Function(String picUrl, BuildContext context)? deletePoster,
    TResult? Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult? Function(BuildContext context)? cancel,
  }) {
    return create?.call(state, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult Function(String title)? editTitle,
    TResult Function(String serving)? editServing,
    TResult Function(String prepTime)? editPrepTime,
    TResult Function(String description)? editDescription,
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
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult Function(Tag tag)? deleteTag,
    TResult Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult Function(XFile? file)? addRecipePoster,
    TResult Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult Function(String picUrl, BuildContext context)? deletePoster,
    TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult Function(BuildContext context)? cancel,
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
    required TResult Function(_EditTitle value) editTitle,
    required TResult Function(_EditServing value) editServing,
    required TResult Function(_EditPrepTime value) editPrepTime,
    required TResult Function(_EditDescription value) editDescription,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_DeleteTag value) deleteTag,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddRecipePoster value) addRecipePoster,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeletePoster value) deletePoster,
    required TResult Function(_DeleteCookingStepPic value) deleteCookingStepPic,
    required TResult Function(_Cancel value) cancel,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditTitle value)? editTitle,
    TResult? Function(_EditServing value)? editServing,
    TResult? Function(_EditPrepTime value)? editPrepTime,
    TResult? Function(_EditDescription value)? editDescription,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_DeleteTag value)? deleteTag,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddRecipePoster value)? addRecipePoster,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeletePoster value)? deletePoster,
    TResult? Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditTitle value)? editTitle,
    TResult Function(_EditServing value)? editServing,
    TResult Function(_EditPrepTime value)? editPrepTime,
    TResult Function(_EditDescription value)? editDescription,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_DeleteTag value)? deleteTag,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddRecipePoster value)? addRecipePoster,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeletePoster value)? deletePoster,
    TResult Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult Function(_Cancel value)? cancel,
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
  $Res call(
      {String ingredient,
      TextEditingController controller,
      BuildContext context});
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
    Object? controller = null,
    Object? context = null,
  }) {
    return _then(_$_AddIngredient(
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as String,
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_AddIngredient implements _AddIngredient {
  const _$_AddIngredient(
      {required this.ingredient,
      required this.controller,
      required this.context});

  @override
  final String ingredient;
  @override
  final TextEditingController controller;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CreateRecipeEvent.addIngredient(ingredient: $ingredient, controller: $controller, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddIngredient &&
            (identical(other.ingredient, ingredient) ||
                other.ingredient == ingredient) &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ingredient, controller, context);

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
    required TResult Function(String ingredient,
            TextEditingController controller, BuildContext context)
        addIngredient,
    required TResult Function(String title) editTitle,
    required TResult Function(String serving) editServing,
    required TResult Function(String prepTime) editPrepTime,
    required TResult Function(String description) editDescription,
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
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function(
            String tag, BuildContext context, TextEditingController controller)
        addTag,
    required TResult Function(Tag tag) deleteTag,
    required TResult Function(
            BuildContext context, UserAuthenticationState authState)
        submit,
    required TResult Function(XFile? file) addRecipePoster,
    required TResult Function(XFile? file, CookingStep cookingStep)
        editCookingStepPic,
    required TResult Function(String picUrl, BuildContext context) deletePoster,
    required TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)
        deleteCookingStepPic,
    required TResult Function(BuildContext context) cancel,
  }) {
    return addIngredient(ingredient, controller, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult? Function(String title)? editTitle,
    TResult? Function(String serving)? editServing,
    TResult? Function(String prepTime)? editPrepTime,
    TResult? Function(String description)? editDescription,
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
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult? Function(Tag tag)? deleteTag,
    TResult? Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult? Function(XFile? file)? addRecipePoster,
    TResult? Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult? Function(String picUrl, BuildContext context)? deletePoster,
    TResult? Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult? Function(BuildContext context)? cancel,
  }) {
    return addIngredient?.call(ingredient, controller, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult Function(String title)? editTitle,
    TResult Function(String serving)? editServing,
    TResult Function(String prepTime)? editPrepTime,
    TResult Function(String description)? editDescription,
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
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult Function(Tag tag)? deleteTag,
    TResult Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult Function(XFile? file)? addRecipePoster,
    TResult Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult Function(String picUrl, BuildContext context)? deletePoster,
    TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult Function(BuildContext context)? cancel,
    required TResult orElse(),
  }) {
    if (addIngredient != null) {
      return addIngredient(ingredient, controller, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditTitle value) editTitle,
    required TResult Function(_EditServing value) editServing,
    required TResult Function(_EditPrepTime value) editPrepTime,
    required TResult Function(_EditDescription value) editDescription,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_DeleteTag value) deleteTag,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddRecipePoster value) addRecipePoster,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeletePoster value) deletePoster,
    required TResult Function(_DeleteCookingStepPic value) deleteCookingStepPic,
    required TResult Function(_Cancel value) cancel,
  }) {
    return addIngredient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditTitle value)? editTitle,
    TResult? Function(_EditServing value)? editServing,
    TResult? Function(_EditPrepTime value)? editPrepTime,
    TResult? Function(_EditDescription value)? editDescription,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_DeleteTag value)? deleteTag,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddRecipePoster value)? addRecipePoster,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeletePoster value)? deletePoster,
    TResult? Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return addIngredient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditTitle value)? editTitle,
    TResult Function(_EditServing value)? editServing,
    TResult Function(_EditPrepTime value)? editPrepTime,
    TResult Function(_EditDescription value)? editDescription,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_DeleteTag value)? deleteTag,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddRecipePoster value)? addRecipePoster,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeletePoster value)? deletePoster,
    TResult Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (addIngredient != null) {
      return addIngredient(this);
    }
    return orElse();
  }
}

abstract class _AddIngredient implements CreateRecipeEvent {
  const factory _AddIngredient(
      {required final String ingredient,
      required final TextEditingController controller,
      required final BuildContext context}) = _$_AddIngredient;

  String get ingredient;
  TextEditingController get controller;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_AddIngredientCopyWith<_$_AddIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditTitleCopyWith<$Res> {
  factory _$$_EditTitleCopyWith(
          _$_EditTitle value, $Res Function(_$_EditTitle) then) =
      __$$_EditTitleCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$_EditTitleCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$_EditTitle>
    implements _$$_EditTitleCopyWith<$Res> {
  __$$_EditTitleCopyWithImpl(
      _$_EditTitle _value, $Res Function(_$_EditTitle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$_EditTitle(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditTitle implements _EditTitle {
  const _$_EditTitle({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'CreateRecipeEvent.editTitle(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditTitle &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditTitleCopyWith<_$_EditTitle> get copyWith =>
      __$$_EditTitleCopyWithImpl<_$_EditTitle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient,
            TextEditingController controller, BuildContext context)
        addIngredient,
    required TResult Function(String title) editTitle,
    required TResult Function(String serving) editServing,
    required TResult Function(String prepTime) editPrepTime,
    required TResult Function(String description) editDescription,
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
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function(
            String tag, BuildContext context, TextEditingController controller)
        addTag,
    required TResult Function(Tag tag) deleteTag,
    required TResult Function(
            BuildContext context, UserAuthenticationState authState)
        submit,
    required TResult Function(XFile? file) addRecipePoster,
    required TResult Function(XFile? file, CookingStep cookingStep)
        editCookingStepPic,
    required TResult Function(String picUrl, BuildContext context) deletePoster,
    required TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)
        deleteCookingStepPic,
    required TResult Function(BuildContext context) cancel,
  }) {
    return editTitle(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult? Function(String title)? editTitle,
    TResult? Function(String serving)? editServing,
    TResult? Function(String prepTime)? editPrepTime,
    TResult? Function(String description)? editDescription,
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
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult? Function(Tag tag)? deleteTag,
    TResult? Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult? Function(XFile? file)? addRecipePoster,
    TResult? Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult? Function(String picUrl, BuildContext context)? deletePoster,
    TResult? Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult? Function(BuildContext context)? cancel,
  }) {
    return editTitle?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult Function(String title)? editTitle,
    TResult Function(String serving)? editServing,
    TResult Function(String prepTime)? editPrepTime,
    TResult Function(String description)? editDescription,
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
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult Function(Tag tag)? deleteTag,
    TResult Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult Function(XFile? file)? addRecipePoster,
    TResult Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult Function(String picUrl, BuildContext context)? deletePoster,
    TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult Function(BuildContext context)? cancel,
    required TResult orElse(),
  }) {
    if (editTitle != null) {
      return editTitle(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditTitle value) editTitle,
    required TResult Function(_EditServing value) editServing,
    required TResult Function(_EditPrepTime value) editPrepTime,
    required TResult Function(_EditDescription value) editDescription,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_DeleteTag value) deleteTag,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddRecipePoster value) addRecipePoster,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeletePoster value) deletePoster,
    required TResult Function(_DeleteCookingStepPic value) deleteCookingStepPic,
    required TResult Function(_Cancel value) cancel,
  }) {
    return editTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditTitle value)? editTitle,
    TResult? Function(_EditServing value)? editServing,
    TResult? Function(_EditPrepTime value)? editPrepTime,
    TResult? Function(_EditDescription value)? editDescription,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_DeleteTag value)? deleteTag,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddRecipePoster value)? addRecipePoster,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeletePoster value)? deletePoster,
    TResult? Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return editTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditTitle value)? editTitle,
    TResult Function(_EditServing value)? editServing,
    TResult Function(_EditPrepTime value)? editPrepTime,
    TResult Function(_EditDescription value)? editDescription,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_DeleteTag value)? deleteTag,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddRecipePoster value)? addRecipePoster,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeletePoster value)? deletePoster,
    TResult Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (editTitle != null) {
      return editTitle(this);
    }
    return orElse();
  }
}

abstract class _EditTitle implements CreateRecipeEvent {
  const factory _EditTitle({required final String title}) = _$_EditTitle;

  String get title;
  @JsonKey(ignore: true)
  _$$_EditTitleCopyWith<_$_EditTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditServingCopyWith<$Res> {
  factory _$$_EditServingCopyWith(
          _$_EditServing value, $Res Function(_$_EditServing) then) =
      __$$_EditServingCopyWithImpl<$Res>;
  @useResult
  $Res call({String serving});
}

/// @nodoc
class __$$_EditServingCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$_EditServing>
    implements _$$_EditServingCopyWith<$Res> {
  __$$_EditServingCopyWithImpl(
      _$_EditServing _value, $Res Function(_$_EditServing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serving = null,
  }) {
    return _then(_$_EditServing(
      serving: null == serving
          ? _value.serving
          : serving // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditServing implements _EditServing {
  const _$_EditServing({required this.serving});

  @override
  final String serving;

  @override
  String toString() {
    return 'CreateRecipeEvent.editServing(serving: $serving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditServing &&
            (identical(other.serving, serving) || other.serving == serving));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serving);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditServingCopyWith<_$_EditServing> get copyWith =>
      __$$_EditServingCopyWithImpl<_$_EditServing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient,
            TextEditingController controller, BuildContext context)
        addIngredient,
    required TResult Function(String title) editTitle,
    required TResult Function(String serving) editServing,
    required TResult Function(String prepTime) editPrepTime,
    required TResult Function(String description) editDescription,
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
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function(
            String tag, BuildContext context, TextEditingController controller)
        addTag,
    required TResult Function(Tag tag) deleteTag,
    required TResult Function(
            BuildContext context, UserAuthenticationState authState)
        submit,
    required TResult Function(XFile? file) addRecipePoster,
    required TResult Function(XFile? file, CookingStep cookingStep)
        editCookingStepPic,
    required TResult Function(String picUrl, BuildContext context) deletePoster,
    required TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)
        deleteCookingStepPic,
    required TResult Function(BuildContext context) cancel,
  }) {
    return editServing(serving);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult? Function(String title)? editTitle,
    TResult? Function(String serving)? editServing,
    TResult? Function(String prepTime)? editPrepTime,
    TResult? Function(String description)? editDescription,
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
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult? Function(Tag tag)? deleteTag,
    TResult? Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult? Function(XFile? file)? addRecipePoster,
    TResult? Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult? Function(String picUrl, BuildContext context)? deletePoster,
    TResult? Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult? Function(BuildContext context)? cancel,
  }) {
    return editServing?.call(serving);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult Function(String title)? editTitle,
    TResult Function(String serving)? editServing,
    TResult Function(String prepTime)? editPrepTime,
    TResult Function(String description)? editDescription,
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
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult Function(Tag tag)? deleteTag,
    TResult Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult Function(XFile? file)? addRecipePoster,
    TResult Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult Function(String picUrl, BuildContext context)? deletePoster,
    TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult Function(BuildContext context)? cancel,
    required TResult orElse(),
  }) {
    if (editServing != null) {
      return editServing(serving);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditTitle value) editTitle,
    required TResult Function(_EditServing value) editServing,
    required TResult Function(_EditPrepTime value) editPrepTime,
    required TResult Function(_EditDescription value) editDescription,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_DeleteTag value) deleteTag,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddRecipePoster value) addRecipePoster,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeletePoster value) deletePoster,
    required TResult Function(_DeleteCookingStepPic value) deleteCookingStepPic,
    required TResult Function(_Cancel value) cancel,
  }) {
    return editServing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditTitle value)? editTitle,
    TResult? Function(_EditServing value)? editServing,
    TResult? Function(_EditPrepTime value)? editPrepTime,
    TResult? Function(_EditDescription value)? editDescription,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_DeleteTag value)? deleteTag,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddRecipePoster value)? addRecipePoster,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeletePoster value)? deletePoster,
    TResult? Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return editServing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditTitle value)? editTitle,
    TResult Function(_EditServing value)? editServing,
    TResult Function(_EditPrepTime value)? editPrepTime,
    TResult Function(_EditDescription value)? editDescription,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_DeleteTag value)? deleteTag,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddRecipePoster value)? addRecipePoster,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeletePoster value)? deletePoster,
    TResult Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (editServing != null) {
      return editServing(this);
    }
    return orElse();
  }
}

abstract class _EditServing implements CreateRecipeEvent {
  const factory _EditServing({required final String serving}) = _$_EditServing;

  String get serving;
  @JsonKey(ignore: true)
  _$$_EditServingCopyWith<_$_EditServing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditPrepTimeCopyWith<$Res> {
  factory _$$_EditPrepTimeCopyWith(
          _$_EditPrepTime value, $Res Function(_$_EditPrepTime) then) =
      __$$_EditPrepTimeCopyWithImpl<$Res>;
  @useResult
  $Res call({String prepTime});
}

/// @nodoc
class __$$_EditPrepTimeCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$_EditPrepTime>
    implements _$$_EditPrepTimeCopyWith<$Res> {
  __$$_EditPrepTimeCopyWithImpl(
      _$_EditPrepTime _value, $Res Function(_$_EditPrepTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prepTime = null,
  }) {
    return _then(_$_EditPrepTime(
      prepTime: null == prepTime
          ? _value.prepTime
          : prepTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditPrepTime implements _EditPrepTime {
  const _$_EditPrepTime({required this.prepTime});

  @override
  final String prepTime;

  @override
  String toString() {
    return 'CreateRecipeEvent.editPrepTime(prepTime: $prepTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditPrepTime &&
            (identical(other.prepTime, prepTime) ||
                other.prepTime == prepTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prepTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditPrepTimeCopyWith<_$_EditPrepTime> get copyWith =>
      __$$_EditPrepTimeCopyWithImpl<_$_EditPrepTime>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient,
            TextEditingController controller, BuildContext context)
        addIngredient,
    required TResult Function(String title) editTitle,
    required TResult Function(String serving) editServing,
    required TResult Function(String prepTime) editPrepTime,
    required TResult Function(String description) editDescription,
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
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function(
            String tag, BuildContext context, TextEditingController controller)
        addTag,
    required TResult Function(Tag tag) deleteTag,
    required TResult Function(
            BuildContext context, UserAuthenticationState authState)
        submit,
    required TResult Function(XFile? file) addRecipePoster,
    required TResult Function(XFile? file, CookingStep cookingStep)
        editCookingStepPic,
    required TResult Function(String picUrl, BuildContext context) deletePoster,
    required TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)
        deleteCookingStepPic,
    required TResult Function(BuildContext context) cancel,
  }) {
    return editPrepTime(prepTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult? Function(String title)? editTitle,
    TResult? Function(String serving)? editServing,
    TResult? Function(String prepTime)? editPrepTime,
    TResult? Function(String description)? editDescription,
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
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult? Function(Tag tag)? deleteTag,
    TResult? Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult? Function(XFile? file)? addRecipePoster,
    TResult? Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult? Function(String picUrl, BuildContext context)? deletePoster,
    TResult? Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult? Function(BuildContext context)? cancel,
  }) {
    return editPrepTime?.call(prepTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult Function(String title)? editTitle,
    TResult Function(String serving)? editServing,
    TResult Function(String prepTime)? editPrepTime,
    TResult Function(String description)? editDescription,
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
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult Function(Tag tag)? deleteTag,
    TResult Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult Function(XFile? file)? addRecipePoster,
    TResult Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult Function(String picUrl, BuildContext context)? deletePoster,
    TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult Function(BuildContext context)? cancel,
    required TResult orElse(),
  }) {
    if (editPrepTime != null) {
      return editPrepTime(prepTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditTitle value) editTitle,
    required TResult Function(_EditServing value) editServing,
    required TResult Function(_EditPrepTime value) editPrepTime,
    required TResult Function(_EditDescription value) editDescription,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_DeleteTag value) deleteTag,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddRecipePoster value) addRecipePoster,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeletePoster value) deletePoster,
    required TResult Function(_DeleteCookingStepPic value) deleteCookingStepPic,
    required TResult Function(_Cancel value) cancel,
  }) {
    return editPrepTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditTitle value)? editTitle,
    TResult? Function(_EditServing value)? editServing,
    TResult? Function(_EditPrepTime value)? editPrepTime,
    TResult? Function(_EditDescription value)? editDescription,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_DeleteTag value)? deleteTag,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddRecipePoster value)? addRecipePoster,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeletePoster value)? deletePoster,
    TResult? Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return editPrepTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditTitle value)? editTitle,
    TResult Function(_EditServing value)? editServing,
    TResult Function(_EditPrepTime value)? editPrepTime,
    TResult Function(_EditDescription value)? editDescription,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_DeleteTag value)? deleteTag,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddRecipePoster value)? addRecipePoster,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeletePoster value)? deletePoster,
    TResult Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (editPrepTime != null) {
      return editPrepTime(this);
    }
    return orElse();
  }
}

abstract class _EditPrepTime implements CreateRecipeEvent {
  const factory _EditPrepTime({required final String prepTime}) =
      _$_EditPrepTime;

  String get prepTime;
  @JsonKey(ignore: true)
  _$$_EditPrepTimeCopyWith<_$_EditPrepTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditDescriptionCopyWith<$Res> {
  factory _$$_EditDescriptionCopyWith(
          _$_EditDescription value, $Res Function(_$_EditDescription) then) =
      __$$_EditDescriptionCopyWithImpl<$Res>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$_EditDescriptionCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$_EditDescription>
    implements _$$_EditDescriptionCopyWith<$Res> {
  __$$_EditDescriptionCopyWithImpl(
      _$_EditDescription _value, $Res Function(_$_EditDescription) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$_EditDescription(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditDescription implements _EditDescription {
  const _$_EditDescription({required this.description});

  @override
  final String description;

  @override
  String toString() {
    return 'CreateRecipeEvent.editDescription(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditDescription &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditDescriptionCopyWith<_$_EditDescription> get copyWith =>
      __$$_EditDescriptionCopyWithImpl<_$_EditDescription>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient,
            TextEditingController controller, BuildContext context)
        addIngredient,
    required TResult Function(String title) editTitle,
    required TResult Function(String serving) editServing,
    required TResult Function(String prepTime) editPrepTime,
    required TResult Function(String description) editDescription,
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
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function(
            String tag, BuildContext context, TextEditingController controller)
        addTag,
    required TResult Function(Tag tag) deleteTag,
    required TResult Function(
            BuildContext context, UserAuthenticationState authState)
        submit,
    required TResult Function(XFile? file) addRecipePoster,
    required TResult Function(XFile? file, CookingStep cookingStep)
        editCookingStepPic,
    required TResult Function(String picUrl, BuildContext context) deletePoster,
    required TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)
        deleteCookingStepPic,
    required TResult Function(BuildContext context) cancel,
  }) {
    return editDescription(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult? Function(String title)? editTitle,
    TResult? Function(String serving)? editServing,
    TResult? Function(String prepTime)? editPrepTime,
    TResult? Function(String description)? editDescription,
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
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult? Function(Tag tag)? deleteTag,
    TResult? Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult? Function(XFile? file)? addRecipePoster,
    TResult? Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult? Function(String picUrl, BuildContext context)? deletePoster,
    TResult? Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult? Function(BuildContext context)? cancel,
  }) {
    return editDescription?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult Function(String title)? editTitle,
    TResult Function(String serving)? editServing,
    TResult Function(String prepTime)? editPrepTime,
    TResult Function(String description)? editDescription,
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
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult Function(Tag tag)? deleteTag,
    TResult Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult Function(XFile? file)? addRecipePoster,
    TResult Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult Function(String picUrl, BuildContext context)? deletePoster,
    TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult Function(BuildContext context)? cancel,
    required TResult orElse(),
  }) {
    if (editDescription != null) {
      return editDescription(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditTitle value) editTitle,
    required TResult Function(_EditServing value) editServing,
    required TResult Function(_EditPrepTime value) editPrepTime,
    required TResult Function(_EditDescription value) editDescription,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_DeleteTag value) deleteTag,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddRecipePoster value) addRecipePoster,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeletePoster value) deletePoster,
    required TResult Function(_DeleteCookingStepPic value) deleteCookingStepPic,
    required TResult Function(_Cancel value) cancel,
  }) {
    return editDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditTitle value)? editTitle,
    TResult? Function(_EditServing value)? editServing,
    TResult? Function(_EditPrepTime value)? editPrepTime,
    TResult? Function(_EditDescription value)? editDescription,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_DeleteTag value)? deleteTag,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddRecipePoster value)? addRecipePoster,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeletePoster value)? deletePoster,
    TResult? Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return editDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditTitle value)? editTitle,
    TResult Function(_EditServing value)? editServing,
    TResult Function(_EditPrepTime value)? editPrepTime,
    TResult Function(_EditDescription value)? editDescription,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_DeleteTag value)? deleteTag,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddRecipePoster value)? addRecipePoster,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeletePoster value)? deletePoster,
    TResult Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (editDescription != null) {
      return editDescription(this);
    }
    return orElse();
  }
}

abstract class _EditDescription implements CreateRecipeEvent {
  const factory _EditDescription({required final String description}) =
      _$_EditDescription;

  String get description;
  @JsonKey(ignore: true)
  _$$_EditDescriptionCopyWith<_$_EditDescription> get copyWith =>
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
    required TResult Function(String ingredient,
            TextEditingController controller, BuildContext context)
        addIngredient,
    required TResult Function(String title) editTitle,
    required TResult Function(String serving) editServing,
    required TResult Function(String prepTime) editPrepTime,
    required TResult Function(String description) editDescription,
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
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function(
            String tag, BuildContext context, TextEditingController controller)
        addTag,
    required TResult Function(Tag tag) deleteTag,
    required TResult Function(
            BuildContext context, UserAuthenticationState authState)
        submit,
    required TResult Function(XFile? file) addRecipePoster,
    required TResult Function(XFile? file, CookingStep cookingStep)
        editCookingStepPic,
    required TResult Function(String picUrl, BuildContext context) deletePoster,
    required TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)
        deleteCookingStepPic,
    required TResult Function(BuildContext context) cancel,
  }) {
    return editIngredientName(ingredient, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult? Function(String title)? editTitle,
    TResult? Function(String serving)? editServing,
    TResult? Function(String prepTime)? editPrepTime,
    TResult? Function(String description)? editDescription,
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
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult? Function(Tag tag)? deleteTag,
    TResult? Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult? Function(XFile? file)? addRecipePoster,
    TResult? Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult? Function(String picUrl, BuildContext context)? deletePoster,
    TResult? Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult? Function(BuildContext context)? cancel,
  }) {
    return editIngredientName?.call(ingredient, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult Function(String title)? editTitle,
    TResult Function(String serving)? editServing,
    TResult Function(String prepTime)? editPrepTime,
    TResult Function(String description)? editDescription,
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
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult Function(Tag tag)? deleteTag,
    TResult Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult Function(XFile? file)? addRecipePoster,
    TResult Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult Function(String picUrl, BuildContext context)? deletePoster,
    TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult Function(BuildContext context)? cancel,
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
    required TResult Function(_EditTitle value) editTitle,
    required TResult Function(_EditServing value) editServing,
    required TResult Function(_EditPrepTime value) editPrepTime,
    required TResult Function(_EditDescription value) editDescription,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_DeleteTag value) deleteTag,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddRecipePoster value) addRecipePoster,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeletePoster value) deletePoster,
    required TResult Function(_DeleteCookingStepPic value) deleteCookingStepPic,
    required TResult Function(_Cancel value) cancel,
  }) {
    return editIngredientName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditTitle value)? editTitle,
    TResult? Function(_EditServing value)? editServing,
    TResult? Function(_EditPrepTime value)? editPrepTime,
    TResult? Function(_EditDescription value)? editDescription,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_DeleteTag value)? deleteTag,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddRecipePoster value)? addRecipePoster,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeletePoster value)? deletePoster,
    TResult? Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return editIngredientName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditTitle value)? editTitle,
    TResult Function(_EditServing value)? editServing,
    TResult Function(_EditPrepTime value)? editPrepTime,
    TResult Function(_EditDescription value)? editDescription,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_DeleteTag value)? deleteTag,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddRecipePoster value)? addRecipePoster,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeletePoster value)? deletePoster,
    TResult Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult Function(_Cancel value)? cancel,
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
    required TResult Function(String ingredient,
            TextEditingController controller, BuildContext context)
        addIngredient,
    required TResult Function(String title) editTitle,
    required TResult Function(String serving) editServing,
    required TResult Function(String prepTime) editPrepTime,
    required TResult Function(String description) editDescription,
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
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function(
            String tag, BuildContext context, TextEditingController controller)
        addTag,
    required TResult Function(Tag tag) deleteTag,
    required TResult Function(
            BuildContext context, UserAuthenticationState authState)
        submit,
    required TResult Function(XFile? file) addRecipePoster,
    required TResult Function(XFile? file, CookingStep cookingStep)
        editCookingStepPic,
    required TResult Function(String picUrl, BuildContext context) deletePoster,
    required TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)
        deleteCookingStepPic,
    required TResult Function(BuildContext context) cancel,
  }) {
    return editIngredientQuantity(ingredient, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult? Function(String title)? editTitle,
    TResult? Function(String serving)? editServing,
    TResult? Function(String prepTime)? editPrepTime,
    TResult? Function(String description)? editDescription,
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
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult? Function(Tag tag)? deleteTag,
    TResult? Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult? Function(XFile? file)? addRecipePoster,
    TResult? Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult? Function(String picUrl, BuildContext context)? deletePoster,
    TResult? Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult? Function(BuildContext context)? cancel,
  }) {
    return editIngredientQuantity?.call(ingredient, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult Function(String title)? editTitle,
    TResult Function(String serving)? editServing,
    TResult Function(String prepTime)? editPrepTime,
    TResult Function(String description)? editDescription,
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
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult Function(Tag tag)? deleteTag,
    TResult Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult Function(XFile? file)? addRecipePoster,
    TResult Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult Function(String picUrl, BuildContext context)? deletePoster,
    TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult Function(BuildContext context)? cancel,
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
    required TResult Function(_EditTitle value) editTitle,
    required TResult Function(_EditServing value) editServing,
    required TResult Function(_EditPrepTime value) editPrepTime,
    required TResult Function(_EditDescription value) editDescription,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_DeleteTag value) deleteTag,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddRecipePoster value) addRecipePoster,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeletePoster value) deletePoster,
    required TResult Function(_DeleteCookingStepPic value) deleteCookingStepPic,
    required TResult Function(_Cancel value) cancel,
  }) {
    return editIngredientQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditTitle value)? editTitle,
    TResult? Function(_EditServing value)? editServing,
    TResult? Function(_EditPrepTime value)? editPrepTime,
    TResult? Function(_EditDescription value)? editDescription,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_DeleteTag value)? deleteTag,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddRecipePoster value)? addRecipePoster,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeletePoster value)? deletePoster,
    TResult? Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return editIngredientQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditTitle value)? editTitle,
    TResult Function(_EditServing value)? editServing,
    TResult Function(_EditPrepTime value)? editPrepTime,
    TResult Function(_EditDescription value)? editDescription,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_DeleteTag value)? deleteTag,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddRecipePoster value)? addRecipePoster,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeletePoster value)? deletePoster,
    TResult Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult Function(_Cancel value)? cancel,
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
    required TResult Function(String ingredient,
            TextEditingController controller, BuildContext context)
        addIngredient,
    required TResult Function(String title) editTitle,
    required TResult Function(String serving) editServing,
    required TResult Function(String prepTime) editPrepTime,
    required TResult Function(String description) editDescription,
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
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function(
            String tag, BuildContext context, TextEditingController controller)
        addTag,
    required TResult Function(Tag tag) deleteTag,
    required TResult Function(
            BuildContext context, UserAuthenticationState authState)
        submit,
    required TResult Function(XFile? file) addRecipePoster,
    required TResult Function(XFile? file, CookingStep cookingStep)
        editCookingStepPic,
    required TResult Function(String picUrl, BuildContext context) deletePoster,
    required TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)
        deleteCookingStepPic,
    required TResult Function(BuildContext context) cancel,
  }) {
    return editIngredientMetric(ingredient, metric);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult? Function(String title)? editTitle,
    TResult? Function(String serving)? editServing,
    TResult? Function(String prepTime)? editPrepTime,
    TResult? Function(String description)? editDescription,
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
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult? Function(Tag tag)? deleteTag,
    TResult? Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult? Function(XFile? file)? addRecipePoster,
    TResult? Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult? Function(String picUrl, BuildContext context)? deletePoster,
    TResult? Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult? Function(BuildContext context)? cancel,
  }) {
    return editIngredientMetric?.call(ingredient, metric);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult Function(String title)? editTitle,
    TResult Function(String serving)? editServing,
    TResult Function(String prepTime)? editPrepTime,
    TResult Function(String description)? editDescription,
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
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult Function(Tag tag)? deleteTag,
    TResult Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult Function(XFile? file)? addRecipePoster,
    TResult Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult Function(String picUrl, BuildContext context)? deletePoster,
    TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult Function(BuildContext context)? cancel,
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
    required TResult Function(_EditTitle value) editTitle,
    required TResult Function(_EditServing value) editServing,
    required TResult Function(_EditPrepTime value) editPrepTime,
    required TResult Function(_EditDescription value) editDescription,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_DeleteTag value) deleteTag,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddRecipePoster value) addRecipePoster,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeletePoster value) deletePoster,
    required TResult Function(_DeleteCookingStepPic value) deleteCookingStepPic,
    required TResult Function(_Cancel value) cancel,
  }) {
    return editIngredientMetric(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditTitle value)? editTitle,
    TResult? Function(_EditServing value)? editServing,
    TResult? Function(_EditPrepTime value)? editPrepTime,
    TResult? Function(_EditDescription value)? editDescription,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_DeleteTag value)? deleteTag,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddRecipePoster value)? addRecipePoster,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeletePoster value)? deletePoster,
    TResult? Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return editIngredientMetric?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditTitle value)? editTitle,
    TResult Function(_EditServing value)? editServing,
    TResult Function(_EditPrepTime value)? editPrepTime,
    TResult Function(_EditDescription value)? editDescription,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_DeleteTag value)? deleteTag,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddRecipePoster value)? addRecipePoster,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeletePoster value)? deletePoster,
    TResult Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult Function(_Cancel value)? cancel,
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
    required TResult Function(String ingredient,
            TextEditingController controller, BuildContext context)
        addIngredient,
    required TResult Function(String title) editTitle,
    required TResult Function(String serving) editServing,
    required TResult Function(String prepTime) editPrepTime,
    required TResult Function(String description) editDescription,
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
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function(
            String tag, BuildContext context, TextEditingController controller)
        addTag,
    required TResult Function(Tag tag) deleteTag,
    required TResult Function(
            BuildContext context, UserAuthenticationState authState)
        submit,
    required TResult Function(XFile? file) addRecipePoster,
    required TResult Function(XFile? file, CookingStep cookingStep)
        editCookingStepPic,
    required TResult Function(String picUrl, BuildContext context) deletePoster,
    required TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)
        deleteCookingStepPic,
    required TResult Function(BuildContext context) cancel,
  }) {
    return deleteIngredient(ingredient);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult? Function(String title)? editTitle,
    TResult? Function(String serving)? editServing,
    TResult? Function(String prepTime)? editPrepTime,
    TResult? Function(String description)? editDescription,
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
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult? Function(Tag tag)? deleteTag,
    TResult? Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult? Function(XFile? file)? addRecipePoster,
    TResult? Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult? Function(String picUrl, BuildContext context)? deletePoster,
    TResult? Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult? Function(BuildContext context)? cancel,
  }) {
    return deleteIngredient?.call(ingredient);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult Function(String title)? editTitle,
    TResult Function(String serving)? editServing,
    TResult Function(String prepTime)? editPrepTime,
    TResult Function(String description)? editDescription,
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
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult Function(Tag tag)? deleteTag,
    TResult Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult Function(XFile? file)? addRecipePoster,
    TResult Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult Function(String picUrl, BuildContext context)? deletePoster,
    TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult Function(BuildContext context)? cancel,
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
    required TResult Function(_EditTitle value) editTitle,
    required TResult Function(_EditServing value) editServing,
    required TResult Function(_EditPrepTime value) editPrepTime,
    required TResult Function(_EditDescription value) editDescription,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_DeleteTag value) deleteTag,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddRecipePoster value) addRecipePoster,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeletePoster value) deletePoster,
    required TResult Function(_DeleteCookingStepPic value) deleteCookingStepPic,
    required TResult Function(_Cancel value) cancel,
  }) {
    return deleteIngredient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditTitle value)? editTitle,
    TResult? Function(_EditServing value)? editServing,
    TResult? Function(_EditPrepTime value)? editPrepTime,
    TResult? Function(_EditDescription value)? editDescription,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_DeleteTag value)? deleteTag,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddRecipePoster value)? addRecipePoster,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeletePoster value)? deletePoster,
    TResult? Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return deleteIngredient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditTitle value)? editTitle,
    TResult Function(_EditServing value)? editServing,
    TResult Function(_EditPrepTime value)? editPrepTime,
    TResult Function(_EditDescription value)? editDescription,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_DeleteTag value)? deleteTag,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddRecipePoster value)? addRecipePoster,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeletePoster value)? deletePoster,
    TResult Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult Function(_Cancel value)? cancel,
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
    required TResult Function(String ingredient,
            TextEditingController controller, BuildContext context)
        addIngredient,
    required TResult Function(String title) editTitle,
    required TResult Function(String serving) editServing,
    required TResult Function(String prepTime) editPrepTime,
    required TResult Function(String description) editDescription,
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
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function(
            String tag, BuildContext context, TextEditingController controller)
        addTag,
    required TResult Function(Tag tag) deleteTag,
    required TResult Function(
            BuildContext context, UserAuthenticationState authState)
        submit,
    required TResult Function(XFile? file) addRecipePoster,
    required TResult Function(XFile? file, CookingStep cookingStep)
        editCookingStepPic,
    required TResult Function(String picUrl, BuildContext context) deletePoster,
    required TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)
        deleteCookingStepPic,
    required TResult Function(BuildContext context) cancel,
  }) {
    return addCookingStep();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult? Function(String title)? editTitle,
    TResult? Function(String serving)? editServing,
    TResult? Function(String prepTime)? editPrepTime,
    TResult? Function(String description)? editDescription,
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
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult? Function(Tag tag)? deleteTag,
    TResult? Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult? Function(XFile? file)? addRecipePoster,
    TResult? Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult? Function(String picUrl, BuildContext context)? deletePoster,
    TResult? Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult? Function(BuildContext context)? cancel,
  }) {
    return addCookingStep?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult Function(String title)? editTitle,
    TResult Function(String serving)? editServing,
    TResult Function(String prepTime)? editPrepTime,
    TResult Function(String description)? editDescription,
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
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult Function(Tag tag)? deleteTag,
    TResult Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult Function(XFile? file)? addRecipePoster,
    TResult Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult Function(String picUrl, BuildContext context)? deletePoster,
    TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult Function(BuildContext context)? cancel,
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
    required TResult Function(_EditTitle value) editTitle,
    required TResult Function(_EditServing value) editServing,
    required TResult Function(_EditPrepTime value) editPrepTime,
    required TResult Function(_EditDescription value) editDescription,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_DeleteTag value) deleteTag,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddRecipePoster value) addRecipePoster,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeletePoster value) deletePoster,
    required TResult Function(_DeleteCookingStepPic value) deleteCookingStepPic,
    required TResult Function(_Cancel value) cancel,
  }) {
    return addCookingStep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditTitle value)? editTitle,
    TResult? Function(_EditServing value)? editServing,
    TResult? Function(_EditPrepTime value)? editPrepTime,
    TResult? Function(_EditDescription value)? editDescription,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_DeleteTag value)? deleteTag,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddRecipePoster value)? addRecipePoster,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeletePoster value)? deletePoster,
    TResult? Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return addCookingStep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditTitle value)? editTitle,
    TResult Function(_EditServing value)? editServing,
    TResult Function(_EditPrepTime value)? editPrepTime,
    TResult Function(_EditDescription value)? editDescription,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_DeleteTag value)? deleteTag,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddRecipePoster value)? addRecipePoster,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeletePoster value)? deletePoster,
    TResult Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult Function(_Cancel value)? cancel,
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
    required TResult Function(String ingredient,
            TextEditingController controller, BuildContext context)
        addIngredient,
    required TResult Function(String title) editTitle,
    required TResult Function(String serving) editServing,
    required TResult Function(String prepTime) editPrepTime,
    required TResult Function(String description) editDescription,
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
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function(
            String tag, BuildContext context, TextEditingController controller)
        addTag,
    required TResult Function(Tag tag) deleteTag,
    required TResult Function(
            BuildContext context, UserAuthenticationState authState)
        submit,
    required TResult Function(XFile? file) addRecipePoster,
    required TResult Function(XFile? file, CookingStep cookingStep)
        editCookingStepPic,
    required TResult Function(String picUrl, BuildContext context) deletePoster,
    required TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)
        deleteCookingStepPic,
    required TResult Function(BuildContext context) cancel,
  }) {
    return editCookingStepDescription(cookingStep, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult? Function(String title)? editTitle,
    TResult? Function(String serving)? editServing,
    TResult? Function(String prepTime)? editPrepTime,
    TResult? Function(String description)? editDescription,
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
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult? Function(Tag tag)? deleteTag,
    TResult? Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult? Function(XFile? file)? addRecipePoster,
    TResult? Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult? Function(String picUrl, BuildContext context)? deletePoster,
    TResult? Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult? Function(BuildContext context)? cancel,
  }) {
    return editCookingStepDescription?.call(cookingStep, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult Function(String title)? editTitle,
    TResult Function(String serving)? editServing,
    TResult Function(String prepTime)? editPrepTime,
    TResult Function(String description)? editDescription,
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
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult Function(Tag tag)? deleteTag,
    TResult Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult Function(XFile? file)? addRecipePoster,
    TResult Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult Function(String picUrl, BuildContext context)? deletePoster,
    TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult Function(BuildContext context)? cancel,
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
    required TResult Function(_EditTitle value) editTitle,
    required TResult Function(_EditServing value) editServing,
    required TResult Function(_EditPrepTime value) editPrepTime,
    required TResult Function(_EditDescription value) editDescription,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_DeleteTag value) deleteTag,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddRecipePoster value) addRecipePoster,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeletePoster value) deletePoster,
    required TResult Function(_DeleteCookingStepPic value) deleteCookingStepPic,
    required TResult Function(_Cancel value) cancel,
  }) {
    return editCookingStepDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditTitle value)? editTitle,
    TResult? Function(_EditServing value)? editServing,
    TResult? Function(_EditPrepTime value)? editPrepTime,
    TResult? Function(_EditDescription value)? editDescription,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_DeleteTag value)? deleteTag,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddRecipePoster value)? addRecipePoster,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeletePoster value)? deletePoster,
    TResult? Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return editCookingStepDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditTitle value)? editTitle,
    TResult Function(_EditServing value)? editServing,
    TResult Function(_EditPrepTime value)? editPrepTime,
    TResult Function(_EditDescription value)? editDescription,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_DeleteTag value)? deleteTag,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddRecipePoster value)? addRecipePoster,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeletePoster value)? deletePoster,
    TResult Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult Function(_Cancel value)? cancel,
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
    required TResult Function(String ingredient,
            TextEditingController controller, BuildContext context)
        addIngredient,
    required TResult Function(String title) editTitle,
    required TResult Function(String serving) editServing,
    required TResult Function(String prepTime) editPrepTime,
    required TResult Function(String description) editDescription,
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
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function(
            String tag, BuildContext context, TextEditingController controller)
        addTag,
    required TResult Function(Tag tag) deleteTag,
    required TResult Function(
            BuildContext context, UserAuthenticationState authState)
        submit,
    required TResult Function(XFile? file) addRecipePoster,
    required TResult Function(XFile? file, CookingStep cookingStep)
        editCookingStepPic,
    required TResult Function(String picUrl, BuildContext context) deletePoster,
    required TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)
        deleteCookingStepPic,
    required TResult Function(BuildContext context) cancel,
  }) {
    return deleteCookingStep(cookingStep);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult? Function(String title)? editTitle,
    TResult? Function(String serving)? editServing,
    TResult? Function(String prepTime)? editPrepTime,
    TResult? Function(String description)? editDescription,
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
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult? Function(Tag tag)? deleteTag,
    TResult? Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult? Function(XFile? file)? addRecipePoster,
    TResult? Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult? Function(String picUrl, BuildContext context)? deletePoster,
    TResult? Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult? Function(BuildContext context)? cancel,
  }) {
    return deleteCookingStep?.call(cookingStep);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult Function(String title)? editTitle,
    TResult Function(String serving)? editServing,
    TResult Function(String prepTime)? editPrepTime,
    TResult Function(String description)? editDescription,
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
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult Function(Tag tag)? deleteTag,
    TResult Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult Function(XFile? file)? addRecipePoster,
    TResult Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult Function(String picUrl, BuildContext context)? deletePoster,
    TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult Function(BuildContext context)? cancel,
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
    required TResult Function(_EditTitle value) editTitle,
    required TResult Function(_EditServing value) editServing,
    required TResult Function(_EditPrepTime value) editPrepTime,
    required TResult Function(_EditDescription value) editDescription,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_DeleteTag value) deleteTag,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddRecipePoster value) addRecipePoster,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeletePoster value) deletePoster,
    required TResult Function(_DeleteCookingStepPic value) deleteCookingStepPic,
    required TResult Function(_Cancel value) cancel,
  }) {
    return deleteCookingStep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditTitle value)? editTitle,
    TResult? Function(_EditServing value)? editServing,
    TResult? Function(_EditPrepTime value)? editPrepTime,
    TResult? Function(_EditDescription value)? editDescription,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_DeleteTag value)? deleteTag,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddRecipePoster value)? addRecipePoster,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeletePoster value)? deletePoster,
    TResult? Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return deleteCookingStep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditTitle value)? editTitle,
    TResult Function(_EditServing value)? editServing,
    TResult Function(_EditPrepTime value)? editPrepTime,
    TResult Function(_EditDescription value)? editDescription,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_DeleteTag value)? deleteTag,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddRecipePoster value)? addRecipePoster,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeletePoster value)? deletePoster,
    TResult Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult Function(_Cancel value)? cancel,
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
abstract class _$$_AddTagCopyWith<$Res> {
  factory _$$_AddTagCopyWith(_$_AddTag value, $Res Function(_$_AddTag) then) =
      __$$_AddTagCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String tag, BuildContext context, TextEditingController controller});
}

/// @nodoc
class __$$_AddTagCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$_AddTag>
    implements _$$_AddTagCopyWith<$Res> {
  __$$_AddTagCopyWithImpl(_$_AddTag _value, $Res Function(_$_AddTag) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? context = null,
    Object? controller = null,
  }) {
    return _then(_$_AddTag(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_AddTag implements _AddTag {
  const _$_AddTag(
      {required this.tag, required this.context, required this.controller});

  @override
  final String tag;
  @override
  final BuildContext context;
  @override
  final TextEditingController controller;

  @override
  String toString() {
    return 'CreateRecipeEvent.addTag(tag: $tag, context: $context, controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTag &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag, context, controller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTagCopyWith<_$_AddTag> get copyWith =>
      __$$_AddTagCopyWithImpl<_$_AddTag>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient,
            TextEditingController controller, BuildContext context)
        addIngredient,
    required TResult Function(String title) editTitle,
    required TResult Function(String serving) editServing,
    required TResult Function(String prepTime) editPrepTime,
    required TResult Function(String description) editDescription,
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
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function(
            String tag, BuildContext context, TextEditingController controller)
        addTag,
    required TResult Function(Tag tag) deleteTag,
    required TResult Function(
            BuildContext context, UserAuthenticationState authState)
        submit,
    required TResult Function(XFile? file) addRecipePoster,
    required TResult Function(XFile? file, CookingStep cookingStep)
        editCookingStepPic,
    required TResult Function(String picUrl, BuildContext context) deletePoster,
    required TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)
        deleteCookingStepPic,
    required TResult Function(BuildContext context) cancel,
  }) {
    return addTag(tag, context, controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult? Function(String title)? editTitle,
    TResult? Function(String serving)? editServing,
    TResult? Function(String prepTime)? editPrepTime,
    TResult? Function(String description)? editDescription,
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
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult? Function(Tag tag)? deleteTag,
    TResult? Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult? Function(XFile? file)? addRecipePoster,
    TResult? Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult? Function(String picUrl, BuildContext context)? deletePoster,
    TResult? Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult? Function(BuildContext context)? cancel,
  }) {
    return addTag?.call(tag, context, controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult Function(String title)? editTitle,
    TResult Function(String serving)? editServing,
    TResult Function(String prepTime)? editPrepTime,
    TResult Function(String description)? editDescription,
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
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult Function(Tag tag)? deleteTag,
    TResult Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult Function(XFile? file)? addRecipePoster,
    TResult Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult Function(String picUrl, BuildContext context)? deletePoster,
    TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult Function(BuildContext context)? cancel,
    required TResult orElse(),
  }) {
    if (addTag != null) {
      return addTag(tag, context, controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditTitle value) editTitle,
    required TResult Function(_EditServing value) editServing,
    required TResult Function(_EditPrepTime value) editPrepTime,
    required TResult Function(_EditDescription value) editDescription,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_DeleteTag value) deleteTag,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddRecipePoster value) addRecipePoster,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeletePoster value) deletePoster,
    required TResult Function(_DeleteCookingStepPic value) deleteCookingStepPic,
    required TResult Function(_Cancel value) cancel,
  }) {
    return addTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditTitle value)? editTitle,
    TResult? Function(_EditServing value)? editServing,
    TResult? Function(_EditPrepTime value)? editPrepTime,
    TResult? Function(_EditDescription value)? editDescription,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_DeleteTag value)? deleteTag,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddRecipePoster value)? addRecipePoster,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeletePoster value)? deletePoster,
    TResult? Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return addTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditTitle value)? editTitle,
    TResult Function(_EditServing value)? editServing,
    TResult Function(_EditPrepTime value)? editPrepTime,
    TResult Function(_EditDescription value)? editDescription,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_DeleteTag value)? deleteTag,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddRecipePoster value)? addRecipePoster,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeletePoster value)? deletePoster,
    TResult Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (addTag != null) {
      return addTag(this);
    }
    return orElse();
  }
}

abstract class _AddTag implements CreateRecipeEvent {
  const factory _AddTag(
      {required final String tag,
      required final BuildContext context,
      required final TextEditingController controller}) = _$_AddTag;

  String get tag;
  BuildContext get context;
  TextEditingController get controller;
  @JsonKey(ignore: true)
  _$$_AddTagCopyWith<_$_AddTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteTagCopyWith<$Res> {
  factory _$$_DeleteTagCopyWith(
          _$_DeleteTag value, $Res Function(_$_DeleteTag) then) =
      __$$_DeleteTagCopyWithImpl<$Res>;
  @useResult
  $Res call({Tag tag});
}

/// @nodoc
class __$$_DeleteTagCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$_DeleteTag>
    implements _$$_DeleteTagCopyWith<$Res> {
  __$$_DeleteTagCopyWithImpl(
      _$_DeleteTag _value, $Res Function(_$_DeleteTag) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
  }) {
    return _then(_$_DeleteTag(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag,
    ));
  }
}

/// @nodoc

class _$_DeleteTag implements _DeleteTag {
  const _$_DeleteTag({required this.tag});

  @override
  final Tag tag;

  @override
  String toString() {
    return 'CreateRecipeEvent.deleteTag(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteTag &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteTagCopyWith<_$_DeleteTag> get copyWith =>
      __$$_DeleteTagCopyWithImpl<_$_DeleteTag>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient,
            TextEditingController controller, BuildContext context)
        addIngredient,
    required TResult Function(String title) editTitle,
    required TResult Function(String serving) editServing,
    required TResult Function(String prepTime) editPrepTime,
    required TResult Function(String description) editDescription,
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
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function(
            String tag, BuildContext context, TextEditingController controller)
        addTag,
    required TResult Function(Tag tag) deleteTag,
    required TResult Function(
            BuildContext context, UserAuthenticationState authState)
        submit,
    required TResult Function(XFile? file) addRecipePoster,
    required TResult Function(XFile? file, CookingStep cookingStep)
        editCookingStepPic,
    required TResult Function(String picUrl, BuildContext context) deletePoster,
    required TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)
        deleteCookingStepPic,
    required TResult Function(BuildContext context) cancel,
  }) {
    return deleteTag(tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult? Function(String title)? editTitle,
    TResult? Function(String serving)? editServing,
    TResult? Function(String prepTime)? editPrepTime,
    TResult? Function(String description)? editDescription,
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
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult? Function(Tag tag)? deleteTag,
    TResult? Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult? Function(XFile? file)? addRecipePoster,
    TResult? Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult? Function(String picUrl, BuildContext context)? deletePoster,
    TResult? Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult? Function(BuildContext context)? cancel,
  }) {
    return deleteTag?.call(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult Function(String title)? editTitle,
    TResult Function(String serving)? editServing,
    TResult Function(String prepTime)? editPrepTime,
    TResult Function(String description)? editDescription,
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
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult Function(Tag tag)? deleteTag,
    TResult Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult Function(XFile? file)? addRecipePoster,
    TResult Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult Function(String picUrl, BuildContext context)? deletePoster,
    TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult Function(BuildContext context)? cancel,
    required TResult orElse(),
  }) {
    if (deleteTag != null) {
      return deleteTag(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditTitle value) editTitle,
    required TResult Function(_EditServing value) editServing,
    required TResult Function(_EditPrepTime value) editPrepTime,
    required TResult Function(_EditDescription value) editDescription,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_DeleteTag value) deleteTag,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddRecipePoster value) addRecipePoster,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeletePoster value) deletePoster,
    required TResult Function(_DeleteCookingStepPic value) deleteCookingStepPic,
    required TResult Function(_Cancel value) cancel,
  }) {
    return deleteTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditTitle value)? editTitle,
    TResult? Function(_EditServing value)? editServing,
    TResult? Function(_EditPrepTime value)? editPrepTime,
    TResult? Function(_EditDescription value)? editDescription,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_DeleteTag value)? deleteTag,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddRecipePoster value)? addRecipePoster,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeletePoster value)? deletePoster,
    TResult? Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return deleteTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditTitle value)? editTitle,
    TResult Function(_EditServing value)? editServing,
    TResult Function(_EditPrepTime value)? editPrepTime,
    TResult Function(_EditDescription value)? editDescription,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_DeleteTag value)? deleteTag,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddRecipePoster value)? addRecipePoster,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeletePoster value)? deletePoster,
    TResult Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (deleteTag != null) {
      return deleteTag(this);
    }
    return orElse();
  }
}

abstract class _DeleteTag implements CreateRecipeEvent {
  const factory _DeleteTag({required final Tag tag}) = _$_DeleteTag;

  Tag get tag;
  @JsonKey(ignore: true)
  _$$_DeleteTagCopyWith<_$_DeleteTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitCopyWith<$Res> {
  factory _$$_SubmitCopyWith(_$_Submit value, $Res Function(_$_Submit) then) =
      __$$_SubmitCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, UserAuthenticationState authState});

  $UserAuthenticationStateCopyWith<$Res> get authState;
}

/// @nodoc
class __$$_SubmitCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$_Submit>
    implements _$$_SubmitCopyWith<$Res> {
  __$$_SubmitCopyWithImpl(_$_Submit _value, $Res Function(_$_Submit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? authState = null,
  }) {
    return _then(_$_Submit(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
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

class _$_Submit implements _Submit {
  const _$_Submit({required this.context, required this.authState});

  @override
  final BuildContext context;
  @override
  final UserAuthenticationState authState;

  @override
  String toString() {
    return 'CreateRecipeEvent.submit(context: $context, authState: $authState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Submit &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.authState, authState) ||
                other.authState == authState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, authState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubmitCopyWith<_$_Submit> get copyWith =>
      __$$_SubmitCopyWithImpl<_$_Submit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient,
            TextEditingController controller, BuildContext context)
        addIngredient,
    required TResult Function(String title) editTitle,
    required TResult Function(String serving) editServing,
    required TResult Function(String prepTime) editPrepTime,
    required TResult Function(String description) editDescription,
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
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function(
            String tag, BuildContext context, TextEditingController controller)
        addTag,
    required TResult Function(Tag tag) deleteTag,
    required TResult Function(
            BuildContext context, UserAuthenticationState authState)
        submit,
    required TResult Function(XFile? file) addRecipePoster,
    required TResult Function(XFile? file, CookingStep cookingStep)
        editCookingStepPic,
    required TResult Function(String picUrl, BuildContext context) deletePoster,
    required TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)
        deleteCookingStepPic,
    required TResult Function(BuildContext context) cancel,
  }) {
    return submit(context, authState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult? Function(String title)? editTitle,
    TResult? Function(String serving)? editServing,
    TResult? Function(String prepTime)? editPrepTime,
    TResult? Function(String description)? editDescription,
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
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult? Function(Tag tag)? deleteTag,
    TResult? Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult? Function(XFile? file)? addRecipePoster,
    TResult? Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult? Function(String picUrl, BuildContext context)? deletePoster,
    TResult? Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult? Function(BuildContext context)? cancel,
  }) {
    return submit?.call(context, authState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult Function(String title)? editTitle,
    TResult Function(String serving)? editServing,
    TResult Function(String prepTime)? editPrepTime,
    TResult Function(String description)? editDescription,
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
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult Function(Tag tag)? deleteTag,
    TResult Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult Function(XFile? file)? addRecipePoster,
    TResult Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult Function(String picUrl, BuildContext context)? deletePoster,
    TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult Function(BuildContext context)? cancel,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(context, authState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditTitle value) editTitle,
    required TResult Function(_EditServing value) editServing,
    required TResult Function(_EditPrepTime value) editPrepTime,
    required TResult Function(_EditDescription value) editDescription,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_DeleteTag value) deleteTag,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddRecipePoster value) addRecipePoster,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeletePoster value) deletePoster,
    required TResult Function(_DeleteCookingStepPic value) deleteCookingStepPic,
    required TResult Function(_Cancel value) cancel,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditTitle value)? editTitle,
    TResult? Function(_EditServing value)? editServing,
    TResult? Function(_EditPrepTime value)? editPrepTime,
    TResult? Function(_EditDescription value)? editDescription,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_DeleteTag value)? deleteTag,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddRecipePoster value)? addRecipePoster,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeletePoster value)? deletePoster,
    TResult? Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditTitle value)? editTitle,
    TResult Function(_EditServing value)? editServing,
    TResult Function(_EditPrepTime value)? editPrepTime,
    TResult Function(_EditDescription value)? editDescription,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_DeleteTag value)? deleteTag,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddRecipePoster value)? addRecipePoster,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeletePoster value)? deletePoster,
    TResult Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements CreateRecipeEvent {
  const factory _Submit(
      {required final BuildContext context,
      required final UserAuthenticationState authState}) = _$_Submit;

  BuildContext get context;
  UserAuthenticationState get authState;
  @JsonKey(ignore: true)
  _$$_SubmitCopyWith<_$_Submit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddRecipePosterCopyWith<$Res> {
  factory _$$_AddRecipePosterCopyWith(
          _$_AddRecipePoster value, $Res Function(_$_AddRecipePoster) then) =
      __$$_AddRecipePosterCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile? file});
}

/// @nodoc
class __$$_AddRecipePosterCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$_AddRecipePoster>
    implements _$$_AddRecipePosterCopyWith<$Res> {
  __$$_AddRecipePosterCopyWithImpl(
      _$_AddRecipePoster _value, $Res Function(_$_AddRecipePoster) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_$_AddRecipePoster(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$_AddRecipePoster implements _AddRecipePoster {
  const _$_AddRecipePoster({required this.file});

  @override
  final XFile? file;

  @override
  String toString() {
    return 'CreateRecipeEvent.addRecipePoster(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddRecipePoster &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddRecipePosterCopyWith<_$_AddRecipePoster> get copyWith =>
      __$$_AddRecipePosterCopyWithImpl<_$_AddRecipePoster>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient,
            TextEditingController controller, BuildContext context)
        addIngredient,
    required TResult Function(String title) editTitle,
    required TResult Function(String serving) editServing,
    required TResult Function(String prepTime) editPrepTime,
    required TResult Function(String description) editDescription,
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
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function(
            String tag, BuildContext context, TextEditingController controller)
        addTag,
    required TResult Function(Tag tag) deleteTag,
    required TResult Function(
            BuildContext context, UserAuthenticationState authState)
        submit,
    required TResult Function(XFile? file) addRecipePoster,
    required TResult Function(XFile? file, CookingStep cookingStep)
        editCookingStepPic,
    required TResult Function(String picUrl, BuildContext context) deletePoster,
    required TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)
        deleteCookingStepPic,
    required TResult Function(BuildContext context) cancel,
  }) {
    return addRecipePoster(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult? Function(String title)? editTitle,
    TResult? Function(String serving)? editServing,
    TResult? Function(String prepTime)? editPrepTime,
    TResult? Function(String description)? editDescription,
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
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult? Function(Tag tag)? deleteTag,
    TResult? Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult? Function(XFile? file)? addRecipePoster,
    TResult? Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult? Function(String picUrl, BuildContext context)? deletePoster,
    TResult? Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult? Function(BuildContext context)? cancel,
  }) {
    return addRecipePoster?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult Function(String title)? editTitle,
    TResult Function(String serving)? editServing,
    TResult Function(String prepTime)? editPrepTime,
    TResult Function(String description)? editDescription,
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
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult Function(Tag tag)? deleteTag,
    TResult Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult Function(XFile? file)? addRecipePoster,
    TResult Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult Function(String picUrl, BuildContext context)? deletePoster,
    TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult Function(BuildContext context)? cancel,
    required TResult orElse(),
  }) {
    if (addRecipePoster != null) {
      return addRecipePoster(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditTitle value) editTitle,
    required TResult Function(_EditServing value) editServing,
    required TResult Function(_EditPrepTime value) editPrepTime,
    required TResult Function(_EditDescription value) editDescription,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_DeleteTag value) deleteTag,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddRecipePoster value) addRecipePoster,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeletePoster value) deletePoster,
    required TResult Function(_DeleteCookingStepPic value) deleteCookingStepPic,
    required TResult Function(_Cancel value) cancel,
  }) {
    return addRecipePoster(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditTitle value)? editTitle,
    TResult? Function(_EditServing value)? editServing,
    TResult? Function(_EditPrepTime value)? editPrepTime,
    TResult? Function(_EditDescription value)? editDescription,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_DeleteTag value)? deleteTag,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddRecipePoster value)? addRecipePoster,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeletePoster value)? deletePoster,
    TResult? Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return addRecipePoster?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditTitle value)? editTitle,
    TResult Function(_EditServing value)? editServing,
    TResult Function(_EditPrepTime value)? editPrepTime,
    TResult Function(_EditDescription value)? editDescription,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_DeleteTag value)? deleteTag,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddRecipePoster value)? addRecipePoster,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeletePoster value)? deletePoster,
    TResult Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (addRecipePoster != null) {
      return addRecipePoster(this);
    }
    return orElse();
  }
}

abstract class _AddRecipePoster implements CreateRecipeEvent {
  const factory _AddRecipePoster({required final XFile? file}) =
      _$_AddRecipePoster;

  XFile? get file;
  @JsonKey(ignore: true)
  _$$_AddRecipePosterCopyWith<_$_AddRecipePoster> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditCookingStepPicCopyWith<$Res> {
  factory _$$_EditCookingStepPicCopyWith(_$_EditCookingStepPic value,
          $Res Function(_$_EditCookingStepPic) then) =
      __$$_EditCookingStepPicCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile? file, CookingStep cookingStep});
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
    Object? file = freezed,
    Object? cookingStep = null,
  }) {
    return _then(_$_EditCookingStepPic(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile?,
      cookingStep: null == cookingStep
          ? _value.cookingStep
          : cookingStep // ignore: cast_nullable_to_non_nullable
              as CookingStep,
    ));
  }
}

/// @nodoc

class _$_EditCookingStepPic implements _EditCookingStepPic {
  const _$_EditCookingStepPic({required this.file, required this.cookingStep});

  @override
  final XFile? file;
  @override
  final CookingStep cookingStep;

  @override
  String toString() {
    return 'CreateRecipeEvent.editCookingStepPic(file: $file, cookingStep: $cookingStep)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditCookingStepPic &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.cookingStep, cookingStep) ||
                other.cookingStep == cookingStep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file, cookingStep);

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
    required TResult Function(String ingredient,
            TextEditingController controller, BuildContext context)
        addIngredient,
    required TResult Function(String title) editTitle,
    required TResult Function(String serving) editServing,
    required TResult Function(String prepTime) editPrepTime,
    required TResult Function(String description) editDescription,
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
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function(
            String tag, BuildContext context, TextEditingController controller)
        addTag,
    required TResult Function(Tag tag) deleteTag,
    required TResult Function(
            BuildContext context, UserAuthenticationState authState)
        submit,
    required TResult Function(XFile? file) addRecipePoster,
    required TResult Function(XFile? file, CookingStep cookingStep)
        editCookingStepPic,
    required TResult Function(String picUrl, BuildContext context) deletePoster,
    required TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)
        deleteCookingStepPic,
    required TResult Function(BuildContext context) cancel,
  }) {
    return editCookingStepPic(file, cookingStep);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult? Function(String title)? editTitle,
    TResult? Function(String serving)? editServing,
    TResult? Function(String prepTime)? editPrepTime,
    TResult? Function(String description)? editDescription,
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
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult? Function(Tag tag)? deleteTag,
    TResult? Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult? Function(XFile? file)? addRecipePoster,
    TResult? Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult? Function(String picUrl, BuildContext context)? deletePoster,
    TResult? Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult? Function(BuildContext context)? cancel,
  }) {
    return editCookingStepPic?.call(file, cookingStep);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult Function(String title)? editTitle,
    TResult Function(String serving)? editServing,
    TResult Function(String prepTime)? editPrepTime,
    TResult Function(String description)? editDescription,
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
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult Function(Tag tag)? deleteTag,
    TResult Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult Function(XFile? file)? addRecipePoster,
    TResult Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult Function(String picUrl, BuildContext context)? deletePoster,
    TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult Function(BuildContext context)? cancel,
    required TResult orElse(),
  }) {
    if (editCookingStepPic != null) {
      return editCookingStepPic(file, cookingStep);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditTitle value) editTitle,
    required TResult Function(_EditServing value) editServing,
    required TResult Function(_EditPrepTime value) editPrepTime,
    required TResult Function(_EditDescription value) editDescription,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_DeleteTag value) deleteTag,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddRecipePoster value) addRecipePoster,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeletePoster value) deletePoster,
    required TResult Function(_DeleteCookingStepPic value) deleteCookingStepPic,
    required TResult Function(_Cancel value) cancel,
  }) {
    return editCookingStepPic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditTitle value)? editTitle,
    TResult? Function(_EditServing value)? editServing,
    TResult? Function(_EditPrepTime value)? editPrepTime,
    TResult? Function(_EditDescription value)? editDescription,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_DeleteTag value)? deleteTag,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddRecipePoster value)? addRecipePoster,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeletePoster value)? deletePoster,
    TResult? Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return editCookingStepPic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditTitle value)? editTitle,
    TResult Function(_EditServing value)? editServing,
    TResult Function(_EditPrepTime value)? editPrepTime,
    TResult Function(_EditDescription value)? editDescription,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_DeleteTag value)? deleteTag,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddRecipePoster value)? addRecipePoster,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeletePoster value)? deletePoster,
    TResult Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult Function(_Cancel value)? cancel,
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
      {required final XFile? file,
      required final CookingStep cookingStep}) = _$_EditCookingStepPic;

  XFile? get file;
  CookingStep get cookingStep;
  @JsonKey(ignore: true)
  _$$_EditCookingStepPicCopyWith<_$_EditCookingStepPic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeletePosterCopyWith<$Res> {
  factory _$$_DeletePosterCopyWith(
          _$_DeletePoster value, $Res Function(_$_DeletePoster) then) =
      __$$_DeletePosterCopyWithImpl<$Res>;
  @useResult
  $Res call({String picUrl, BuildContext context});
}

/// @nodoc
class __$$_DeletePosterCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$_DeletePoster>
    implements _$$_DeletePosterCopyWith<$Res> {
  __$$_DeletePosterCopyWithImpl(
      _$_DeletePoster _value, $Res Function(_$_DeletePoster) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? picUrl = null,
    Object? context = null,
  }) {
    return _then(_$_DeletePoster(
      picUrl: null == picUrl
          ? _value.picUrl
          : picUrl // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_DeletePoster implements _DeletePoster {
  const _$_DeletePoster({required this.picUrl, required this.context});

  @override
  final String picUrl;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CreateRecipeEvent.deletePoster(picUrl: $picUrl, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeletePoster &&
            (identical(other.picUrl, picUrl) || other.picUrl == picUrl) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, picUrl, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeletePosterCopyWith<_$_DeletePoster> get copyWith =>
      __$$_DeletePosterCopyWithImpl<_$_DeletePoster>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient,
            TextEditingController controller, BuildContext context)
        addIngredient,
    required TResult Function(String title) editTitle,
    required TResult Function(String serving) editServing,
    required TResult Function(String prepTime) editPrepTime,
    required TResult Function(String description) editDescription,
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
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function(
            String tag, BuildContext context, TextEditingController controller)
        addTag,
    required TResult Function(Tag tag) deleteTag,
    required TResult Function(
            BuildContext context, UserAuthenticationState authState)
        submit,
    required TResult Function(XFile? file) addRecipePoster,
    required TResult Function(XFile? file, CookingStep cookingStep)
        editCookingStepPic,
    required TResult Function(String picUrl, BuildContext context) deletePoster,
    required TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)
        deleteCookingStepPic,
    required TResult Function(BuildContext context) cancel,
  }) {
    return deletePoster(picUrl, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult? Function(String title)? editTitle,
    TResult? Function(String serving)? editServing,
    TResult? Function(String prepTime)? editPrepTime,
    TResult? Function(String description)? editDescription,
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
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult? Function(Tag tag)? deleteTag,
    TResult? Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult? Function(XFile? file)? addRecipePoster,
    TResult? Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult? Function(String picUrl, BuildContext context)? deletePoster,
    TResult? Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult? Function(BuildContext context)? cancel,
  }) {
    return deletePoster?.call(picUrl, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult Function(String title)? editTitle,
    TResult Function(String serving)? editServing,
    TResult Function(String prepTime)? editPrepTime,
    TResult Function(String description)? editDescription,
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
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult Function(Tag tag)? deleteTag,
    TResult Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult Function(XFile? file)? addRecipePoster,
    TResult Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult Function(String picUrl, BuildContext context)? deletePoster,
    TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult Function(BuildContext context)? cancel,
    required TResult orElse(),
  }) {
    if (deletePoster != null) {
      return deletePoster(picUrl, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditTitle value) editTitle,
    required TResult Function(_EditServing value) editServing,
    required TResult Function(_EditPrepTime value) editPrepTime,
    required TResult Function(_EditDescription value) editDescription,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_DeleteTag value) deleteTag,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddRecipePoster value) addRecipePoster,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeletePoster value) deletePoster,
    required TResult Function(_DeleteCookingStepPic value) deleteCookingStepPic,
    required TResult Function(_Cancel value) cancel,
  }) {
    return deletePoster(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditTitle value)? editTitle,
    TResult? Function(_EditServing value)? editServing,
    TResult? Function(_EditPrepTime value)? editPrepTime,
    TResult? Function(_EditDescription value)? editDescription,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_DeleteTag value)? deleteTag,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddRecipePoster value)? addRecipePoster,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeletePoster value)? deletePoster,
    TResult? Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return deletePoster?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditTitle value)? editTitle,
    TResult Function(_EditServing value)? editServing,
    TResult Function(_EditPrepTime value)? editPrepTime,
    TResult Function(_EditDescription value)? editDescription,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_DeleteTag value)? deleteTag,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddRecipePoster value)? addRecipePoster,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeletePoster value)? deletePoster,
    TResult Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (deletePoster != null) {
      return deletePoster(this);
    }
    return orElse();
  }
}

abstract class _DeletePoster implements CreateRecipeEvent {
  const factory _DeletePoster(
      {required final String picUrl,
      required final BuildContext context}) = _$_DeletePoster;

  String get picUrl;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_DeletePosterCopyWith<_$_DeletePoster> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCookingStepPicCopyWith<$Res> {
  factory _$$_DeleteCookingStepPicCopyWith(_$_DeleteCookingStepPic value,
          $Res Function(_$_DeleteCookingStepPic) then) =
      __$$_DeleteCookingStepPicCopyWithImpl<$Res>;
  @useResult
  $Res call({String picUrl, BuildContext context, CookingStep cookingStep});
}

/// @nodoc
class __$$_DeleteCookingStepPicCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$_DeleteCookingStepPic>
    implements _$$_DeleteCookingStepPicCopyWith<$Res> {
  __$$_DeleteCookingStepPicCopyWithImpl(_$_DeleteCookingStepPic _value,
      $Res Function(_$_DeleteCookingStepPic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? picUrl = null,
    Object? context = null,
    Object? cookingStep = null,
  }) {
    return _then(_$_DeleteCookingStepPic(
      picUrl: null == picUrl
          ? _value.picUrl
          : picUrl // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      cookingStep: null == cookingStep
          ? _value.cookingStep
          : cookingStep // ignore: cast_nullable_to_non_nullable
              as CookingStep,
    ));
  }
}

/// @nodoc

class _$_DeleteCookingStepPic implements _DeleteCookingStepPic {
  const _$_DeleteCookingStepPic(
      {required this.picUrl, required this.context, required this.cookingStep});

  @override
  final String picUrl;
  @override
  final BuildContext context;
  @override
  final CookingStep cookingStep;

  @override
  String toString() {
    return 'CreateRecipeEvent.deleteCookingStepPic(picUrl: $picUrl, context: $context, cookingStep: $cookingStep)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteCookingStepPic &&
            (identical(other.picUrl, picUrl) || other.picUrl == picUrl) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.cookingStep, cookingStep) ||
                other.cookingStep == cookingStep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, picUrl, context, cookingStep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCookingStepPicCopyWith<_$_DeleteCookingStepPic> get copyWith =>
      __$$_DeleteCookingStepPicCopyWithImpl<_$_DeleteCookingStepPic>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient,
            TextEditingController controller, BuildContext context)
        addIngredient,
    required TResult Function(String title) editTitle,
    required TResult Function(String serving) editServing,
    required TResult Function(String prepTime) editPrepTime,
    required TResult Function(String description) editDescription,
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
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function(
            String tag, BuildContext context, TextEditingController controller)
        addTag,
    required TResult Function(Tag tag) deleteTag,
    required TResult Function(
            BuildContext context, UserAuthenticationState authState)
        submit,
    required TResult Function(XFile? file) addRecipePoster,
    required TResult Function(XFile? file, CookingStep cookingStep)
        editCookingStepPic,
    required TResult Function(String picUrl, BuildContext context) deletePoster,
    required TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)
        deleteCookingStepPic,
    required TResult Function(BuildContext context) cancel,
  }) {
    return deleteCookingStepPic(picUrl, context, cookingStep);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult? Function(String title)? editTitle,
    TResult? Function(String serving)? editServing,
    TResult? Function(String prepTime)? editPrepTime,
    TResult? Function(String description)? editDescription,
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
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult? Function(Tag tag)? deleteTag,
    TResult? Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult? Function(XFile? file)? addRecipePoster,
    TResult? Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult? Function(String picUrl, BuildContext context)? deletePoster,
    TResult? Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult? Function(BuildContext context)? cancel,
  }) {
    return deleteCookingStepPic?.call(picUrl, context, cookingStep);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult Function(String title)? editTitle,
    TResult Function(String serving)? editServing,
    TResult Function(String prepTime)? editPrepTime,
    TResult Function(String description)? editDescription,
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
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult Function(Tag tag)? deleteTag,
    TResult Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult Function(XFile? file)? addRecipePoster,
    TResult Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult Function(String picUrl, BuildContext context)? deletePoster,
    TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult Function(BuildContext context)? cancel,
    required TResult orElse(),
  }) {
    if (deleteCookingStepPic != null) {
      return deleteCookingStepPic(picUrl, context, cookingStep);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditTitle value) editTitle,
    required TResult Function(_EditServing value) editServing,
    required TResult Function(_EditPrepTime value) editPrepTime,
    required TResult Function(_EditDescription value) editDescription,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_DeleteTag value) deleteTag,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddRecipePoster value) addRecipePoster,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeletePoster value) deletePoster,
    required TResult Function(_DeleteCookingStepPic value) deleteCookingStepPic,
    required TResult Function(_Cancel value) cancel,
  }) {
    return deleteCookingStepPic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditTitle value)? editTitle,
    TResult? Function(_EditServing value)? editServing,
    TResult? Function(_EditPrepTime value)? editPrepTime,
    TResult? Function(_EditDescription value)? editDescription,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_DeleteTag value)? deleteTag,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddRecipePoster value)? addRecipePoster,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeletePoster value)? deletePoster,
    TResult? Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return deleteCookingStepPic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditTitle value)? editTitle,
    TResult Function(_EditServing value)? editServing,
    TResult Function(_EditPrepTime value)? editPrepTime,
    TResult Function(_EditDescription value)? editDescription,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_DeleteTag value)? deleteTag,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddRecipePoster value)? addRecipePoster,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeletePoster value)? deletePoster,
    TResult Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (deleteCookingStepPic != null) {
      return deleteCookingStepPic(this);
    }
    return orElse();
  }
}

abstract class _DeleteCookingStepPic implements CreateRecipeEvent {
  const factory _DeleteCookingStepPic(
      {required final String picUrl,
      required final BuildContext context,
      required final CookingStep cookingStep}) = _$_DeleteCookingStepPic;

  String get picUrl;
  BuildContext get context;
  CookingStep get cookingStep;
  @JsonKey(ignore: true)
  _$$_DeleteCookingStepPicCopyWith<_$_DeleteCookingStepPic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CancelCopyWith<$Res> {
  factory _$$_CancelCopyWith(_$_Cancel value, $Res Function(_$_Cancel) then) =
      __$$_CancelCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_CancelCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$_Cancel>
    implements _$$_CancelCopyWith<$Res> {
  __$$_CancelCopyWithImpl(_$_Cancel _value, $Res Function(_$_Cancel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$_Cancel(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_Cancel implements _Cancel {
  const _$_Cancel({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CreateRecipeEvent.cancel(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cancel &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CancelCopyWith<_$_Cancel> get copyWith =>
      __$$_CancelCopyWithImpl<_$_Cancel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAuthenticationState state, BuildContext context)
        create,
    required TResult Function(String ingredient,
            TextEditingController controller, BuildContext context)
        addIngredient,
    required TResult Function(String title) editTitle,
    required TResult Function(String serving) editServing,
    required TResult Function(String prepTime) editPrepTime,
    required TResult Function(String description) editDescription,
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
    required TResult Function(CookingStep cookingStep) deleteCookingStep,
    required TResult Function(
            String tag, BuildContext context, TextEditingController controller)
        addTag,
    required TResult Function(Tag tag) deleteTag,
    required TResult Function(
            BuildContext context, UserAuthenticationState authState)
        submit,
    required TResult Function(XFile? file) addRecipePoster,
    required TResult Function(XFile? file, CookingStep cookingStep)
        editCookingStepPic,
    required TResult Function(String picUrl, BuildContext context) deletePoster,
    required TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)
        deleteCookingStepPic,
    required TResult Function(BuildContext context) cancel,
  }) {
    return cancel(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult? Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult? Function(String title)? editTitle,
    TResult? Function(String serving)? editServing,
    TResult? Function(String prepTime)? editPrepTime,
    TResult? Function(String description)? editDescription,
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
    TResult? Function(CookingStep cookingStep)? deleteCookingStep,
    TResult? Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult? Function(Tag tag)? deleteTag,
    TResult? Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult? Function(XFile? file)? addRecipePoster,
    TResult? Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult? Function(String picUrl, BuildContext context)? deletePoster,
    TResult? Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult? Function(BuildContext context)? cancel,
  }) {
    return cancel?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthenticationState state, BuildContext context)?
        create,
    TResult Function(String ingredient, TextEditingController controller,
            BuildContext context)?
        addIngredient,
    TResult Function(String title)? editTitle,
    TResult Function(String serving)? editServing,
    TResult Function(String prepTime)? editPrepTime,
    TResult Function(String description)? editDescription,
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
    TResult Function(CookingStep cookingStep)? deleteCookingStep,
    TResult Function(
            String tag, BuildContext context, TextEditingController controller)?
        addTag,
    TResult Function(Tag tag)? deleteTag,
    TResult Function(BuildContext context, UserAuthenticationState authState)?
        submit,
    TResult Function(XFile? file)? addRecipePoster,
    TResult Function(XFile? file, CookingStep cookingStep)? editCookingStepPic,
    TResult Function(String picUrl, BuildContext context)? deletePoster,
    TResult Function(
            String picUrl, BuildContext context, CookingStep cookingStep)?
        deleteCookingStepPic,
    TResult Function(BuildContext context)? cancel,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_AddIngredient value) addIngredient,
    required TResult Function(_EditTitle value) editTitle,
    required TResult Function(_EditServing value) editServing,
    required TResult Function(_EditPrepTime value) editPrepTime,
    required TResult Function(_EditDescription value) editDescription,
    required TResult Function(_EditIngredientName value) editIngredientName,
    required TResult Function(_EditIngredientQuantity value)
        editIngredientQuantity,
    required TResult Function(_EditIngredientMetric value) editIngredientMetric,
    required TResult Function(_DeleteIngredient value) deleteIngredient,
    required TResult Function(_AddCookingStep value) addCookingStep,
    required TResult Function(_EditCookingStepDescription value)
        editCookingStepDescription,
    required TResult Function(_DeleteCookingStep value) deleteCookingStep,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_DeleteTag value) deleteTag,
    required TResult Function(_Submit value) submit,
    required TResult Function(_AddRecipePoster value) addRecipePoster,
    required TResult Function(_EditCookingStepPic value) editCookingStepPic,
    required TResult Function(_DeletePoster value) deletePoster,
    required TResult Function(_DeleteCookingStepPic value) deleteCookingStepPic,
    required TResult Function(_Cancel value) cancel,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_AddIngredient value)? addIngredient,
    TResult? Function(_EditTitle value)? editTitle,
    TResult? Function(_EditServing value)? editServing,
    TResult? Function(_EditPrepTime value)? editPrepTime,
    TResult? Function(_EditDescription value)? editDescription,
    TResult? Function(_EditIngredientName value)? editIngredientName,
    TResult? Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult? Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult? Function(_DeleteIngredient value)? deleteIngredient,
    TResult? Function(_AddCookingStep value)? addCookingStep,
    TResult? Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult? Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_DeleteTag value)? deleteTag,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_AddRecipePoster value)? addRecipePoster,
    TResult? Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult? Function(_DeletePoster value)? deletePoster,
    TResult? Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return cancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_AddIngredient value)? addIngredient,
    TResult Function(_EditTitle value)? editTitle,
    TResult Function(_EditServing value)? editServing,
    TResult Function(_EditPrepTime value)? editPrepTime,
    TResult Function(_EditDescription value)? editDescription,
    TResult Function(_EditIngredientName value)? editIngredientName,
    TResult Function(_EditIngredientQuantity value)? editIngredientQuantity,
    TResult Function(_EditIngredientMetric value)? editIngredientMetric,
    TResult Function(_DeleteIngredient value)? deleteIngredient,
    TResult Function(_AddCookingStep value)? addCookingStep,
    TResult Function(_EditCookingStepDescription value)?
        editCookingStepDescription,
    TResult Function(_DeleteCookingStep value)? deleteCookingStep,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_DeleteTag value)? deleteTag,
    TResult Function(_Submit value)? submit,
    TResult Function(_AddRecipePoster value)? addRecipePoster,
    TResult Function(_EditCookingStepPic value)? editCookingStepPic,
    TResult Function(_DeletePoster value)? deletePoster,
    TResult Function(_DeleteCookingStepPic value)? deleteCookingStepPic,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class _Cancel implements CreateRecipeEvent {
  const factory _Cancel({required final BuildContext context}) = _$_Cancel;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_CancelCopyWith<_$_Cancel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateRecipeState {
  RecipeDetail? get recipe => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecipeDetail? recipe) initial,
    required TResult Function(RecipeDetail recipe) creating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecipeDetail? recipe)? initial,
    TResult? Function(RecipeDetail recipe)? creating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecipeDetail? recipe)? initial,
    TResult Function(RecipeDetail recipe)? creating,
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

  @JsonKey(ignore: true)
  $CreateRecipeStateCopyWith<CreateRecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRecipeStateCopyWith<$Res> {
  factory $CreateRecipeStateCopyWith(
          CreateRecipeState value, $Res Function(CreateRecipeState) then) =
      _$CreateRecipeStateCopyWithImpl<$Res, CreateRecipeState>;
  @useResult
  $Res call({RecipeDetail recipe});
}

/// @nodoc
class _$CreateRecipeStateCopyWithImpl<$Res, $Val extends CreateRecipeState>
    implements $CreateRecipeStateCopyWith<$Res> {
  _$CreateRecipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
  }) {
    return _then(_value.copyWith(
      recipe: null == recipe
          ? _value.recipe!
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeDetail,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $CreateRecipeStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RecipeDetail? recipe});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CreateRecipeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = freezed,
  }) {
    return _then(_$_Initial(
      recipe: freezed == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeDetail?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.recipe});

  @override
  final RecipeDetail? recipe;

  @override
  String toString() {
    return 'CreateRecipeState.initial(recipe: $recipe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.recipe, recipe) || other.recipe == recipe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecipeDetail? recipe) initial,
    required TResult Function(RecipeDetail recipe) creating,
  }) {
    return initial(recipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecipeDetail? recipe)? initial,
    TResult? Function(RecipeDetail recipe)? creating,
  }) {
    return initial?.call(recipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecipeDetail? recipe)? initial,
    TResult Function(RecipeDetail recipe)? creating,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(recipe);
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
  const factory _Initial({required final RecipeDetail? recipe}) = _$_Initial;

  @override
  RecipeDetail? get recipe;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreatingCopyWith<$Res>
    implements $CreateRecipeStateCopyWith<$Res> {
  factory _$$_CreatingCopyWith(
          _$_Creating value, $Res Function(_$_Creating) then) =
      __$$_CreatingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RecipeDetail recipe});
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
  }) {
    return _then(_$_Creating(
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeDetail,
    ));
  }
}

/// @nodoc

class _$_Creating implements _Creating {
  const _$_Creating({required this.recipe});

  @override
  final RecipeDetail recipe;

  @override
  String toString() {
    return 'CreateRecipeState.creating(recipe: $recipe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Creating &&
            (identical(other.recipe, recipe) || other.recipe == recipe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatingCopyWith<_$_Creating> get copyWith =>
      __$$_CreatingCopyWithImpl<_$_Creating>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecipeDetail? recipe) initial,
    required TResult Function(RecipeDetail recipe) creating,
  }) {
    return creating(recipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecipeDetail? recipe)? initial,
    TResult? Function(RecipeDetail recipe)? creating,
  }) {
    return creating?.call(recipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecipeDetail? recipe)? initial,
    TResult Function(RecipeDetail recipe)? creating,
    required TResult orElse(),
  }) {
    if (creating != null) {
      return creating(recipe);
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
  const factory _Creating({required final RecipeDetail recipe}) = _$_Creating;

  @override
  RecipeDetail get recipe;
  @override
  @JsonKey(ignore: true)
  _$$_CreatingCopyWith<_$_Creating> get copyWith =>
      throw _privateConstructorUsedError;
}
