part of 'navigation_cubit.dart';

@immutable
abstract class NavigationState {}

class NavigationFeed extends NavigationState {
  NavigationFeed();
}

class NavigationPublish extends NavigationState {
  NavigationPublish();
}

class NavigationProfile extends NavigationState {
  NavigationProfile();
}
