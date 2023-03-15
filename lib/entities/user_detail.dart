import 'package:json_annotation/json_annotation.dart';
import 'package:ta_recipe_app/entities/user.dart';
part 'user_detail.g.dart';

@JsonSerializable()
class UserDetail extends User {
  @JsonKey(name: 'followers_count')
  final int followerCount;
  @JsonKey(name: 'following_count')
  final int followingCount;
  UserDetail(
      {required this.followerCount,
      required this.followingCount,
      required name,
      required username,
      required photoUrl})
      : super(name: name, username: username, photoUrl: photoUrl);
  factory UserDetail.fromJson(Map<String, dynamic> json) =>
      _$UserDetailFromJson(json);

  Map<String, dynamic> toJson() => _$UserDetailToJson(this);
}
