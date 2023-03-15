// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDetail _$UserDetailFromJson(Map<String, dynamic> json) => UserDetail(
      followerCount: json['followers_count'] as int,
      followingCount: json['following_count'] as int,
      name: json['name'],
      username: json['username'],
      photoUrl: json['photo_url'],
    );

Map<String, dynamic> _$UserDetailToJson(UserDetail instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'photo_url': instance.photoUrl,
      'followers_count': instance.followerCount,
      'following_count': instance.followingCount,
    };
