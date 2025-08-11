import 'package:tharicki_demo_project/core/domain/user_entity.dart';

class Post {
  final int id;
  final String description;
  final User author;
  final DateTime dateTime;
  final bool isRepost;
  final bool isQuote;
  final User? repostAuthor;
  final Post? quotePost;

  Post({
    required this.id,
    required this.description,
    required this.author,
    required this.dateTime,
    required this.isRepost,
    required this.isQuote,
    this.repostAuthor,
    this.quotePost,
  });
}
