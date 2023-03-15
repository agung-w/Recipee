// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recipe _$RecipeFromJson(Map<String, dynamic> json) => Recipe(
      id: json['id'] as String,
      title: json['title'] as String,
      posterPicUrl: json['poster_pic_url'] as String,
      description: json['description'] as String,
      prepTime: json['prep_time'] as String,
      serving: json['serving'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      tag: (json['tag'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecipeToJson(Recipe instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'poster_pic_url': instance.posterPicUrl,
      'description': instance.description,
      'prep_time': instance.prepTime,
      'serving': instance.serving,
      'user': instance.user,
      'tag': instance.tag,
    };
