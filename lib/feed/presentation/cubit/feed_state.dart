part of 'feed_cubit.dart';

@immutable
abstract class FeedState {}

class FeedInitial extends FeedState {}

class FeedLoading extends FeedState {}

class FeedSuccess extends FeedState {
  final Feed feed;

  FeedSuccess({required this.feed});
}

class FeedError extends FeedState {
  final String error;

  FeedError({required this.error});
}
