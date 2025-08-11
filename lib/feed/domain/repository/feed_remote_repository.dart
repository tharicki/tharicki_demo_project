import 'package:tharicki_demo_project/feed/domain/entities/feed_entity.dart';

abstract class FeedRemoteRepository {
  Future<Feed> fetchFeed();
}
