import 'package:json_annotation/json_annotation.dart';

part 'ingredient.g.dart';

@JsonSerializable()
class Ingredient {
  final int? id;
  final String name;
  @JsonKey(name: 'pic_url')
  final String? picUrl;
  const Ingredient({
    this.id,
    required this.name,
    this.picUrl,
  });

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);

  Map<String, dynamic> toJson() => _$IngredientToJson(this);
}
