// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metric.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Metric _$MetricFromJson(Map<String, dynamic> json) => Metric(
      id: json['id'] as int,
      name: json['name'] as String,
      abbrev: json['abbrev'] as String,
    );

Map<String, dynamic> _$MetricToJson(Metric instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'abbrev': instance.abbrev,
    };
