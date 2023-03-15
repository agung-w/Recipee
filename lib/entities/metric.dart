import 'package:json_annotation/json_annotation.dart';

part 'metric.g.dart';

@JsonSerializable()
class Metric {
  final int id;
  final String name;
  final String abbrev;
  const Metric({
    required this.id,
    required this.name,
    required this.abbrev,
  });

  factory Metric.fromJson(Map<String, dynamic> json) => _$MetricFromJson(json);

  Map<String, dynamic> toJson() => _$MetricToJson(this);
}
