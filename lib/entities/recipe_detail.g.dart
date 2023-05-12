// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_detail.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RecipeDetailCWProxy {
  RecipeDetail cookingSteps(List<CookingStep> cookingSteps);

  RecipeDetail recipeIngredients(List<RecipeIngredient> recipeIngredients);

  RecipeDetail cookingStepsAttributes(List<CookingStep> cookingStepsAttributes);

  RecipeDetail recipeIngredientsAttributes(
      List<RecipeIngredient> recipeIngredientsAttributes);

  RecipeDetail id(int? id);

  RecipeDetail title(String title);

  RecipeDetail posterPicUrl(String? posterPicUrl);

  RecipeDetail description(String description);

  RecipeDetail prepTime(int? prepTime);

  RecipeDetail serving(int? serving);

  RecipeDetail user(User user);

  RecipeDetail tags(List<Tag>? tags);

  RecipeDetail recipeTagsAttributes(List<Tag>? recipeTagsAttributes);

  RecipeDetail isSaved(bool? isSaved);

  RecipeDetail isOwner(bool? isOwner);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RecipeDetail(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RecipeDetail(...).copyWith(id: 12, name: "My name")
  /// ````
  RecipeDetail call({
    List<CookingStep>? cookingSteps,
    List<RecipeIngredient>? recipeIngredients,
    List<CookingStep>? cookingStepsAttributes,
    List<RecipeIngredient>? recipeIngredientsAttributes,
    int? id,
    String? title,
    String? posterPicUrl,
    String? description,
    int? prepTime,
    int? serving,
    User? user,
    List<Tag>? tags,
    List<Tag>? recipeTagsAttributes,
    bool? isSaved,
    bool? isOwner,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRecipeDetail.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRecipeDetail.copyWith.fieldName(...)`
class _$RecipeDetailCWProxyImpl implements _$RecipeDetailCWProxy {
  const _$RecipeDetailCWProxyImpl(this._value);

  final RecipeDetail _value;

  @override
  RecipeDetail cookingSteps(List<CookingStep> cookingSteps) =>
      this(cookingSteps: cookingSteps);

  @override
  RecipeDetail recipeIngredients(List<RecipeIngredient> recipeIngredients) =>
      this(recipeIngredients: recipeIngredients);

  @override
  RecipeDetail cookingStepsAttributes(
          List<CookingStep> cookingStepsAttributes) =>
      this(cookingStepsAttributes: cookingStepsAttributes);

  @override
  RecipeDetail recipeIngredientsAttributes(
          List<RecipeIngredient> recipeIngredientsAttributes) =>
      this(recipeIngredientsAttributes: recipeIngredientsAttributes);

  @override
  RecipeDetail id(int? id) => this(id: id);

  @override
  RecipeDetail title(String title) => this(title: title);

  @override
  RecipeDetail posterPicUrl(String? posterPicUrl) =>
      this(posterPicUrl: posterPicUrl);

  @override
  RecipeDetail description(String description) =>
      this(description: description);

  @override
  RecipeDetail prepTime(int? prepTime) => this(prepTime: prepTime);

  @override
  RecipeDetail serving(int? serving) => this(serving: serving);

  @override
  RecipeDetail user(User user) => this(user: user);

  @override
  RecipeDetail tags(List<Tag>? tags) => this(tags: tags);

  @override
  RecipeDetail recipeTagsAttributes(List<Tag>? recipeTagsAttributes) =>
      this(recipeTagsAttributes: recipeTagsAttributes);

  @override
  RecipeDetail isSaved(bool? isSaved) => this(isSaved: isSaved);

  @override
  RecipeDetail isOwner(bool? isOwner) => this(isOwner: isOwner);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RecipeDetail(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RecipeDetail(...).copyWith(id: 12, name: "My name")
  /// ````
  RecipeDetail call({
    Object? cookingSteps = const $CopyWithPlaceholder(),
    Object? recipeIngredients = const $CopyWithPlaceholder(),
    Object? cookingStepsAttributes = const $CopyWithPlaceholder(),
    Object? recipeIngredientsAttributes = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? posterPicUrl = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? prepTime = const $CopyWithPlaceholder(),
    Object? serving = const $CopyWithPlaceholder(),
    Object? user = const $CopyWithPlaceholder(),
    Object? tags = const $CopyWithPlaceholder(),
    Object? recipeTagsAttributes = const $CopyWithPlaceholder(),
    Object? isSaved = const $CopyWithPlaceholder(),
    Object? isOwner = const $CopyWithPlaceholder(),
  }) {
    return RecipeDetail(
      cookingSteps:
          cookingSteps == const $CopyWithPlaceholder() || cookingSteps == null
              ? _value.cookingSteps
              // ignore: cast_nullable_to_non_nullable
              : cookingSteps as List<CookingStep>,
      recipeIngredients: recipeIngredients == const $CopyWithPlaceholder() ||
              recipeIngredients == null
          ? _value.recipeIngredients
          // ignore: cast_nullable_to_non_nullable
          : recipeIngredients as List<RecipeIngredient>,
      cookingStepsAttributes:
          cookingStepsAttributes == const $CopyWithPlaceholder() ||
                  cookingStepsAttributes == null
              ? _value.cookingStepsAttributes
              // ignore: cast_nullable_to_non_nullable
              : cookingStepsAttributes as List<CookingStep>,
      recipeIngredientsAttributes:
          recipeIngredientsAttributes == const $CopyWithPlaceholder() ||
                  recipeIngredientsAttributes == null
              ? _value.recipeIngredientsAttributes
              // ignore: cast_nullable_to_non_nullable
              : recipeIngredientsAttributes as List<RecipeIngredient>,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      title: title == const $CopyWithPlaceholder() || title == null
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      posterPicUrl: posterPicUrl == const $CopyWithPlaceholder()
          ? _value.posterPicUrl
          // ignore: cast_nullable_to_non_nullable
          : posterPicUrl as String?,
      description:
          description == const $CopyWithPlaceholder() || description == null
              ? _value.description
              // ignore: cast_nullable_to_non_nullable
              : description as String,
      prepTime: prepTime == const $CopyWithPlaceholder()
          ? _value.prepTime
          // ignore: cast_nullable_to_non_nullable
          : prepTime as int?,
      serving: serving == const $CopyWithPlaceholder()
          ? _value.serving
          // ignore: cast_nullable_to_non_nullable
          : serving as int?,
      user: user == const $CopyWithPlaceholder() || user == null
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as User,
      tags: tags == const $CopyWithPlaceholder()
          ? _value.tags
          // ignore: cast_nullable_to_non_nullable
          : tags as List<Tag>?,
      recipeTagsAttributes: recipeTagsAttributes == const $CopyWithPlaceholder()
          ? _value.recipeTagsAttributes
          // ignore: cast_nullable_to_non_nullable
          : recipeTagsAttributes as List<Tag>?,
      isSaved: isSaved == const $CopyWithPlaceholder()
          ? _value.isSaved
          // ignore: cast_nullable_to_non_nullable
          : isSaved as bool?,
      isOwner: isOwner == const $CopyWithPlaceholder()
          ? _value.isOwner
          // ignore: cast_nullable_to_non_nullable
          : isOwner as bool?,
    );
  }
}

extension $RecipeDetailCopyWith on RecipeDetail {
  /// Returns a callable class that can be used as follows: `instanceOfRecipeDetail.copyWith(...)` or like so:`instanceOfRecipeDetail.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RecipeDetailCWProxy get copyWith => _$RecipeDetailCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeDetail _$RecipeDetailFromJson(Map<String, dynamic> json) => RecipeDetail(
      cookingSteps: (json['cooking_steps'] as List<dynamic>?)
              ?.map((e) => CookingStep.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      recipeIngredients: (json['recipe_ingredients'] as List<dynamic>?)
              ?.map((e) => RecipeIngredient.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      id: json['id'] as int?,
      title: json['title'] as String,
      posterPicUrl: json['poster_pic_url'] as String?,
      description: json['description'] as String,
      prepTime: json['prep_time'] as int?,
      serving: json['serving'] as int?,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      isSaved: json['is_saved'] as bool?,
      isOwner: json['is_owner'] as bool?,
    );

Map<String, dynamic> _$RecipeDetailToJson(RecipeDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'poster_pic_url': instance.posterPicUrl,
      'description': instance.description,
      'prep_time': instance.prepTime,
      'serving': instance.serving,
      'user': instance.user,
      'is_saved': instance.isSaved,
      'is_owner': instance.isOwner,
      'recipe_tags_attributes': instance.recipeTagsAttributes,
      'cooking_steps_attributes': instance.cookingStepsAttributes,
      'recipe_ingredients_attributes': instance.recipeIngredientsAttributes,
    };
