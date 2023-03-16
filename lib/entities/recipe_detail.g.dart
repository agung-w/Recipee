// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeDetail _$RecipeDetailFromJson(Map<String, dynamic> json) => RecipeDetail(
      cookingSteps: (json['cooking_steps'] as List<dynamic>?)
          ?.map((e) => CookingStep.fromJson(e as Map<String, dynamic>))
          .toList(),
      recipeIngredients: (json['recipe_ingredients'] as List<dynamic>?)
          ?.map((e) => RecipeIngredient.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'recipe_tags_attributes': instance.recipeTagsAttributes,
      'cooking_steps_attributes': instance.cookingStepsAttributes,
      'recipe_ingredients_attributes': instance.recipeIngredientsAttributes,
    };
