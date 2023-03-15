import 'package:json_annotation/json_annotation.dart';
import 'package:ta_recipe_app/entities/tag.dart';
import 'package:ta_recipe_app/entities/user.dart';

part 'recipe.g.dart';

@JsonSerializable()
class Recipe {
  final String id;
  final String title;
  @JsonKey(name: "poster_pic_url")
  final String posterPicUrl;
  final String description;
  @JsonKey(name: "prep_time")
  final String prepTime;
  final String serving;
  final User user;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final List<Tag>? tags;
  @JsonKey(
      name: "recipe_tags_attributes",
      includeFromJson: false,
      includeToJson: true)
  final List<Tag>? recipeTagsAttributes;
  const Recipe({
    required this.id,
    required this.title,
    required this.posterPicUrl,
    required this.description,
    required this.prepTime,
    required this.serving,
    required this.user,
    this.tags,
    this.recipeTagsAttributes,
  });

  List<Tag>? get tagList => tags ?? recipeTagsAttributes;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeToJson(this);
}
