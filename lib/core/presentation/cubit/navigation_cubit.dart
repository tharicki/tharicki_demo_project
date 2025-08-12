import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'navigation_state.dart';

@injectable
class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationFeed());

  void changeTab(int index) {
    switch (index) {
      case 0:
        emit(NavigationFeed());
        break;
      case 1:
        emit(NavigationPublish());
        break;
      case 2:
        emit(NavigationProfile());
        break;
    }
  }
}
