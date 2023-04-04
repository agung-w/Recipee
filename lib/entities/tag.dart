import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tag.g.dart';

@JsonSerializable()
@CopyWith()
class Tag {
  @JsonKey(includeFromJson: true, includeToJson: false)
  final int? id;
  @JsonKey(name: "tag_id", includeFromJson: false, includeToJson: true)
  final int? tagId;
  final String? name;
  const Tag({
    this.id,
    this.tagId,
    this.name,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

  Map<String, dynamic> toJson() => _$TagToJson(this);
}
