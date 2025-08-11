import 'package:injectable/injectable.dart';
import 'package:tharicki_demo_project/feed/data/datasource/mock_feed.dart';
import 'package:tharicki_demo_project/feed/data/models/feed_model.dart';
import 'package:tharicki_demo_project/feed/domain/entities/feed_entity.dart';

abstract class FeedRemoteDatasource {
  Future<Feed> fetchFeedItems();
}

@Injectable(as: FeedRemoteDatasource)
class FeedRemoteDatasourceImpl implements FeedRemoteDatasource {
  @override
  Future<Feed> fetchFeedItems() async {
    // This is how I would connect to the API and fetch the feed items
    // final dioClient = DioClient();
    // final response = await dioClient.get('/feed');

    // but to demonstrate the mock data usage, we'll return the mock feed directly
    final response = feed;
    // mock a delay to get the data from API
    await Future.delayed(const Duration(seconds: 2));

    // in a real world, this validation has to be improved
    if (response['feed'] is List) {
      return FeedModel.fromJson(response);
    } else {
      throw Exception('Failed to load feed items');
    }
  }
}
