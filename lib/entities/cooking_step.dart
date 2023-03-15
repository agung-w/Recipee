import 'package:json_annotation/json_annotation.dart';

part 'cooking_step.g.dart';

@JsonSerializable()
class CookingStep {
  final int step;
  final String description;
  @JsonKey(name: "pic_url")
  final String picUrl;
  const CookingStep({
    required this.step,
    required this.description,
    required this.picUrl,
  });

  factory CookingStep.fromJson(Map<String, dynamic> json) =>
      _$CookingStepFromJson(json);

  Map<String, dynamic> toJson() => _$CookingStepToJson(this);
}
