import 'package:json_annotation/json_annotation.dart';

part 'recipe_bundle.g.dart';

@JsonSerializable()
class RecipeBundle {
  final int id;
  final String title;
  final String description;
  final double price;
  final int stock;
  @JsonKey(name: "pic_url")
  final String? picUrl;
  const RecipeBundle({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.stock,
    required this.picUrl,
  });

  factory RecipeBundle.fromJson(Map<String, dynamic> json) =>
      _$RecipeBundleFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeBundleToJson(this);
}
