import 'package:json_annotation/json_annotation.dart';
import 'package:ta_recipe_app/entities/user.dart';

part 'recipe_comment.g.dart';

@JsonSerializable()
class RecipeComment {
  final String content;
  @JsonKey(name: "updated_at")
  final String updatedAt;
  final User user;
  const RecipeComment({
    required this.content,
    required this.updatedAt,
    required this.user,
  });

  factory RecipeComment.fromJson(Map<String, dynamic> json) =>
      _$RecipeCommentFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeCommentToJson(this);
}
