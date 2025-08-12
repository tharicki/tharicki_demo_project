import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharicki_demo_project/core/injection/injection.dart';
import 'package:tharicki_demo_project/core/theme/app_sizes.dart';
import 'package:tharicki_demo_project/feed/presentation/cubit/feed_cubit.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  final FeedCubit cubit = getIt<FeedCubit>();

  @override
  void initState() {
    cubit.fetchFeed();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedCubit, FeedState>(
      bloc: cubit,
      builder: (context, state) {
        if (state is FeedLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is FeedSuccess) {
          return Padding(
            padding: const EdgeInsets.all(AppSizes.md),
            child: ListView.builder(
              itemCount: state.feed.posts.length,
              padding: const EdgeInsets.only(bottom: AppSizes.xs),
              itemBuilder: (context, index) {
                final post = state.feed.posts[index];
                return Card(
                  child: ListTile(
                    title: Text(post.description),
                    subtitle: Text(post.author.name),
                  ),
                );
              },
            ),
          );
        } else {
          return const Center(child: Text('Error loading feed'));
        }
      },
    );
  }
}
