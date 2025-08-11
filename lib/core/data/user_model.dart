import 'package:tharicki_demo_project/core/domain/user_entity.dart';

class UserModel extends User {
  UserModel({
    super.id,
    super.name,
    super.lastName,
    super.born,
    super.joinDate,
    super.postsCount,
    super.repostsCount,
    super.quotedCount,
    super.dayPosts,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      lastName: json['lastName'] as String?,
      born: json['born'] != null ? DateTime.parse(json['born']) : null,
      joinDate: json['joinDate'] != null ? DateTime.parse(json['joinDate']) : null,
      postsCount: json['postsCount'] as int?,
      repostsCount: json['repostsCount'] as int?,
      quotedCount: json['quotedCount'] as int?,
      dayPosts: json['dayPosts'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'lastName': lastName,
      'born': born?.toIso8601String(),
      'joinDate': joinDate?.toIso8601String(),
      'postsCount': postsCount,
      'repostsCount': repostsCount,
      'quotedCount': quotedCount,
      'dayPosts': dayPosts,
    };
  }
}
