import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharicki_demo_project/core/injection/injection.dart';
import 'package:tharicki_demo_project/core/presentation/cubit/navigation_cubit.dart';
import 'package:tharicki_demo_project/core/theme/app_colors.dart';
import 'package:tharicki_demo_project/core/utils/strings.dart';
import 'package:tharicki_demo_project/feed/presentation/cubit/feed_cubit.dart';
import 'package:tharicki_demo_project/feed/presentation/pages/feed_page.dart';
import 'package:tharicki_demo_project/profile/presentation/cubit/profile_cubit.dart';
import 'package:tharicki_demo_project/profile/presentation/pages/profile_page.dart';
import 'package:tharicki_demo_project/publishment/presentation/cubit/publish_cubit.dart';
import 'package:tharicki_demo_project/publishment/presentation/pages/publish_page.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int _selectedIndex = 0;
  final navigationCubit = getIt<NavigationCubit>();

  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      const FeedPage(),
      PublishPage(
        navigationCubit: navigationCubit,
      ),
      const ProfilePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<NavigationCubit>()),
        BlocProvider(create: (context) => getIt<FeedCubit>()),
        BlocProvider(create: (context) => getIt<PublishCubit>()),
        BlocProvider(create: (context) => getIt<ProfileCubit>()),
      ],
      child: Scaffold(
        backgroundColor: AppColors.backgroundGrey,
        appBar: AppBar(
          title: const Text(Strings.appTitle),
          iconTheme: IconThemeData(color: AppColors.white),
        ),
        body: BlocListener<NavigationCubit, NavigationState>(
          bloc: navigationCubit,
          listener: (context, state) {
            switch (state) {
              case NavigationFeed _:
                _selectedIndex = 0;
                break;
              case NavigationPublish _:
                _selectedIndex = 1;
                break;
              case NavigationProfile _:
                _selectedIndex = 2;
                break;
            }
          },
          child: BlocBuilder<NavigationCubit, NavigationState>(
            bloc: navigationCubit,
            builder: (context, state) {
              return IndexedStack(
                index: _selectedIndex,
                children: _pages,
              );
            },
          ),
        ),
        bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
          bloc: navigationCubit,
          builder: (context, state) {
            return BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: (index) {
                navigationCubit.changeTab(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: AppColors.primary,
                  ),
                  label: 'Feed',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add_box,
                    color: AppColors.primary,
                  ),
                  label: 'Publish',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: AppColors.primary,
                  ),
                  label: 'Profile',
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
