import 'package:json_annotation/json_annotation.dart';
import 'package:ta_recipe_app/entities/tag.dart';
import 'package:ta_recipe_app/entities/user.dart';

part 'recipe.g.dart';

@JsonSerializable()
class Recipe {
  final int? id;
  final String title;
  @JsonKey(name: "poster_pic_url")
  final String? posterPicUrl;
  final String description;
  @JsonKey(name: "prep_time")
  final int? prepTime;
  final int? serving;
  final User user;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final List<Tag>? tags;
  @JsonKey(name: "is_saved")
  final bool? isSaved;
  @JsonKey(
      name: "recipe_tags_attributes",
      includeFromJson: false,
      includeToJson: true)
  final List<Tag>? recipeTagsAttributes;
  const Recipe(
      {this.id,
      required this.title,
      this.posterPicUrl,
      required this.description,
      this.prepTime,
      this.serving,
      required this.user,
      this.tags,
      this.recipeTagsAttributes,
      this.isSaved});

  List<Tag>? get tagList => tags ?? recipeTagsAttributes;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeToJson(this);
}
