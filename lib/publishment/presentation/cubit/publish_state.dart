part of 'publish_cubit.dart';

@immutable
abstract class PublishState {}

class PublishInitial extends PublishState {}

class PublishLoading extends PublishState {}

class PublishSuccess extends PublishState {}

class PublishError extends PublishState {
  final String error;

  PublishError({required this.error});
}
