// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeComment _$RecipeCommentFromJson(Map<String, dynamic> json) =>
    RecipeComment(
      recipeId: json['recipe_id'] as int?,
      content: json['content'] as String,
      updatedAt: json['updated_at'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecipeCommentToJson(RecipeComment instance) =>
    <String, dynamic>{
      'recipe_id': instance.recipeId,
      'content': instance.content,
      'updated_at': instance.updatedAt,
      'user': instance.user,
    };
