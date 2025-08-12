import 'package:flutter_test/flutter_test.dart';
import 'package:tharicki_demo_project/feed/data/datasource/feed_datasource.dart';
import 'package:tharicki_demo_project/feed/data/datasource/mock_feed.dart';
import 'package:tharicki_demo_project/feed/domain/entities/feed_entity.dart';

void main() {
  group('FeedDatasourceImpl', () {
    late FeedDatasourceImpl datasource;

    setUp(() {
      datasource = FeedDatasourceImpl();
    });

    test('fetchFeedItems returns FeedModel when mock data is valid', () async {
      final result = await datasource.fetchFeedItems();
      expect(result, isA<Feed>());
      expect(result.posts.isNotEmpty, true);
    });

    test('fetchFeedItems returns empty Feed when mock data is invalid', () async {
      final originalFeed = mockFeed;
      mockFeed['feed'] = [];
      final datasourceWithInvalidFeed = FeedDatasourceImpl();

      final result = await datasourceWithInvalidFeed.fetchFeedItems();
      expect(result, isA<Feed>());
      expect(result.posts.isEmpty, true);

      mockFeed['feed'] = originalFeed['feed'] as List<Map<String, Object>>;
    });
  });
}
