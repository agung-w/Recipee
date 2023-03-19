// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RecipeCWProxy {
  Recipe id(int? id);

  Recipe title(String title);

  Recipe posterPicUrl(String? posterPicUrl);

  Recipe description(String description);

  Recipe prepTime(int? prepTime);

  Recipe serving(int? serving);

  Recipe user(User user);

  Recipe tags(List<Tag>? tags);

  Recipe recipeTagsAttributes(List<Tag>? recipeTagsAttributes);

  Recipe isSaved(bool? isSaved);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Recipe(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Recipe(...).copyWith(id: 12, name: "My name")
  /// ````
  Recipe call({
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
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRecipe.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRecipe.copyWith.fieldName(...)`
class _$RecipeCWProxyImpl implements _$RecipeCWProxy {
  const _$RecipeCWProxyImpl(this._value);

  final Recipe _value;

  @override
  Recipe id(int? id) => this(id: id);

  @override
  Recipe title(String title) => this(title: title);

  @override
  Recipe posterPicUrl(String? posterPicUrl) => this(posterPicUrl: posterPicUrl);

  @override
  Recipe description(String description) => this(description: description);

  @override
  Recipe prepTime(int? prepTime) => this(prepTime: prepTime);

  @override
  Recipe serving(int? serving) => this(serving: serving);

  @override
  Recipe user(User user) => this(user: user);

  @override
  Recipe tags(List<Tag>? tags) => this(tags: tags);

  @override
  Recipe recipeTagsAttributes(List<Tag>? recipeTagsAttributes) =>
      this(recipeTagsAttributes: recipeTagsAttributes);

  @override
  Recipe isSaved(bool? isSaved) => this(isSaved: isSaved);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Recipe(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Recipe(...).copyWith(id: 12, name: "My name")
  /// ````
  Recipe call({
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
  }) {
    return Recipe(
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
    );
  }
}

extension $RecipeCopyWith on Recipe {
  /// Returns a callable class that can be used as follows: `instanceOfRecipe.copyWith(...)` or like so:`instanceOfRecipe.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RecipeCWProxy get copyWith => _$RecipeCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recipe _$RecipeFromJson(Map<String, dynamic> json) => Recipe(
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
    );

Map<String, dynamic> _$RecipeToJson(Recipe instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'poster_pic_url': instance.posterPicUrl,
      'description': instance.description,
      'prep_time': instance.prepTime,
      'serving': instance.serving,
      'user': instance.user,
      'is_saved': instance.isSaved,
      'recipe_tags_attributes': instance.recipeTagsAttributes,
    };
