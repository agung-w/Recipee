import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User(
      {required String name,
      required String username,
      @JsonKey(name: "profile_pic_url") required String? photoUrl,
      @JsonKey(name: "followers_count") required int followerCount,
      @JsonKey(name: "following_count") required int followingCount}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
