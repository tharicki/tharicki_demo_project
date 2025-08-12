import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'publish_state.dart';

@injectable
class PublishCubit extends Cubit<PublishState> {
  PublishCubit() : super(PublishInitial());

  Future<void> postPublish() async {
    emit(PublishLoading());

    // Here you would typically call your repository to post the publish data
    // For example:
    // try {
    //   final result = await repository.postPublish(data);
    //   emit(PublishSuccess(result: result));
    // } catch (e) {
    //   emit(PublishError(error: e.toString()));
    // }
    Future.delayed(const Duration(seconds: 2), () {
      // Simulating a successful publish
      emit(PublishSuccess());
    });
  }
}
