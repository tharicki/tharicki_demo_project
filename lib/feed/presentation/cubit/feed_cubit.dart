import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tharicki_demo_project/core/injection/injection.dart';
import 'package:tharicki_demo_project/feed/domain/entities/feed_entity.dart';
import 'package:tharicki_demo_project/feed/domain/repository/feed_repository.dart';

part 'feed_state.dart';

@injectable
class FeedCubit extends Cubit<FeedState> {
  final FeedRepository repository = getIt.get<FeedRepository>();

  FeedCubit() : super(FeedInitial());

  Future<void> fetchFeed() async {
    emit(FeedLoading());
    try {
      final feed = await repository.fetchFeed();
      emit(FeedSuccess(feed: feed));
    } catch (e) {
      emit(FeedError(error: e.toString()));
    }
  }
}
