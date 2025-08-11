import 'package:tharicki_demo_project/feed/data/datasource/feed_remote_datasource.dart';
import 'package:tharicki_demo_project/feed/domain/entities/feed_entity.dart';
import 'package:tharicki_demo_project/feed/domain/repository/feed_remote_repository.dart';

class FeedRemoteRepositoryImpl implements FeedRemoteRepository {
  final FeedRemoteDatasource remoteDataSource;

  FeedRemoteRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Feed> fetchFeed() async {
    return await remoteDataSource.fetchFeedItems();
  }
}
