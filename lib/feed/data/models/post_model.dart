import 'package:tharicki_demo_project/core/data/user_model.dart';
import 'package:tharicki_demo_project/feed/domain/entities/post_entity.dart';

class PostModel extends Post {
  PostModel({
    required super.id,
    super.description,
    UserModel? super.author,
    super.dateTime,
    super.isRepost,
    super.isQuote,
    UserModel? super.repostAuthor,
    PostModel? super.quotePost,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'] as int? ?? 0,
      description: json['description'] as String?,
      author: json['author'] != null ? UserModel.fromJson(json['author']) : null,
      dateTime: json['dateTime'] != null ? DateTime.parse(json['dateTime']) : null,
      isRepost: json['isRepost'] as bool?,
      isQuote: json['isQuote'] as bool?,
      repostAuthor: json['repostAuthor'] != null ? UserModel.fromJson(json['repostAuthor']) : null,
      quotePost: json['quotePost'] != null ? PostModel.fromJson(json['quotePost']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'author': (author as UserModel?)?.toJson(),
      'dateTime': dateTime?.toIso8601String(),
      'isRepost': isRepost,
      'isQuote': isQuote,
      'repostAuthor': (repostAuthor as UserModel?)?.toJson(),
      'quotePost': (quotePost as PostModel?)?.toJson(),
    };
  }
}
