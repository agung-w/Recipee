import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cooking_step.g.dart';

@CopyWith()
@JsonSerializable()
class CookingStep {
  int? step;
  String description;
  @JsonKey(name: "pic_url")
  String? picUrl;
  CookingStep({
    this.step,
    required this.description,
    this.picUrl,
  });

  factory CookingStep.fromJson(Map<String, dynamic> json) =>
      _$CookingStepFromJson(json);

  Map<String, dynamic> toJson() => _$CookingStepToJson(this);
}
