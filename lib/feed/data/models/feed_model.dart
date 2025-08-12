import 'package:tharicki_demo_project/feed/data/models/post_model.dart';
import 'package:tharicki_demo_project/feed/domain/entities/feed_entity.dart';
import 'package:tharicki_demo_project/feed/domain/entities/post_entity.dart';

class FeedModel extends Feed {
  FeedModel({required super.posts});

  factory FeedModel.fromJson(Map<String, dynamic> json) {
    return FeedModel(
      posts: List<Post>.from(json['feed'].map((post) => PostModel.fromJson(post))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'posts': posts.map((post) => (post as PostModel?)?.toJson()).toList(),
    };
  }
}
