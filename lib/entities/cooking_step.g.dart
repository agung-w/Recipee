// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cooking_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CookingStep _$CookingStepFromJson(Map<String, dynamic> json) => CookingStep(
      step: json['step'] as int,
      description: json['description'] as String,
      picUrl: json['pic_url'] as String?,
    );

Map<String, dynamic> _$CookingStepToJson(CookingStep instance) =>
    <String, dynamic>{
      'step': instance.step,
      'description': instance.description,
      'pic_url': instance.picUrl,
    };
