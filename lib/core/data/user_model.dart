import 'package:tharicki_demo_project/core/domain/user_entity.dart';

class UserModel extends User {
  UserModel({
    required super.id,
    required super.name,
    required super.lastName,
    super.born,
    super.joinDate,
    super.postsCount,
    super.repostsCount,
    super.quotedCount,
    super.dayPosts,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      born: json['born'] != null ? DateTime.parse(json['born']) : null,
      joinDate: json['joinDate'] != null ? DateTime.parse(json['joinDate']) : null,
      postsCount: json['postsCount'] as int? ?? 0,
      repostsCount: json['repostsCount'] as int?,
      quotedCount: json['quotedCount'] as int?,
      dayPosts: json['dayPosts'] as int?,
    );
  }

  static User empty() {
    return User(
      id: 0,
      name: '',
      lastName: '',
      born: null,
      joinDate: null,
      postsCount: 0,
      repostsCount: 0,
      quotedCount: 0,
      dayPosts: 0,
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
