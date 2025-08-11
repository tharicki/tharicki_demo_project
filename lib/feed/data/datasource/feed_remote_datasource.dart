import 'package:tharicki_demo_project/core/services/dio_client.dart';
import 'package:tharicki_demo_project/feed/data/models/feed_model.dart';
import 'package:tharicki_demo_project/feed/domain/entities/feed_entity.dart';

abstract class FeedRemoteDatasource {
  Future<Feed> fetchFeedItems();
}

class FeedRemoteDatasourceImpl implements FeedRemoteDatasource {
  @override
  Future<Feed> fetchFeedItems() async {
    // criar a classe response ou usar o model para fazer o retorno para o repositoy
    final dioClient = DioClient('https://your-api-url.com');
    final response = await dioClient.get('/feed');

    if (response.statusCode == 200 && response.data is List) {
      return FeedModel.fromJson(response.data);
    } else {
      throw Exception('Failed to load feed items');
    }
  }
}
