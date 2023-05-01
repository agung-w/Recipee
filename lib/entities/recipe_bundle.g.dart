// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_bundle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeBundle _$RecipeBundleFromJson(Map<String, dynamic> json) => RecipeBundle(
      id: json['id'] as int?,
      title: json['title'] as String,
      description: json['description'] as String,
      price: (json['price'] as num?)?.toDouble(),
      stock: json['stock'] as int?,
      picUrl: json['pic_url'] as String?,
    );

Map<String, dynamic> _$RecipeBundleToJson(RecipeBundle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'stock': instance.stock,
      'pic_url': instance.picUrl,
    };
