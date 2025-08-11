import 'package:injectable/injectable.dart';
import 'package:tharicki_demo_project/feed/data/datasource/feed_remote_datasource.dart';
import 'package:tharicki_demo_project/feed/domain/entities/feed_entity.dart';
import 'package:tharicki_demo_project/feed/domain/repository/feed_repository.dart';

@Injectable(as: FeedRepository)
class FeedRepositoryImpl implements FeedRepository {
  final FeedRemoteDatasource remoteDataSource;

  FeedRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Feed> fetchFeed() async {
    return await remoteDataSource.fetchFeedItems();
  }
}
