import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharicki_demo_project/core/injection/injection.dart';
import 'package:tharicki_demo_project/core/theme/app_colors.dart';
import 'package:tharicki_demo_project/core/utils/strings.dart';
import 'package:tharicki_demo_project/feed/presentation/cubit/feed_cubit.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  final FeedCubit cubit = getIt<FeedCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundGrey,
      appBar: AppBar(
        title: const Text(Strings.appTitle),
        iconTheme: IconThemeData(color: AppColors.white),
      ),
      body: BlocBuilder<FeedCubit, FeedState>(
        bloc: cubit,
        builder: (context, state) {
          if (state is FeedLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is FeedSuccess) {
            return ListView.builder(
              itemCount: state.feed.posts.length,
              itemBuilder: (context, index) {
                final post = state.feed.posts[index];
                return ListTile(
                  title: Text(post.description),
                  subtitle: Text(post.author.name),
                );
              },
            );
          } else {
            return const Center(child: Text('Error loading feed'));
          }
        },
      ),
    );
  }
}
