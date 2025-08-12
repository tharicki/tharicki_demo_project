import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharicki_demo_project/core/injection/injection.dart';
import 'package:tharicki_demo_project/core/presentation/cubit/navigation_cubit.dart';
import 'package:tharicki_demo_project/core/presentation/widgets/model_widget.dart';
import 'package:tharicki_demo_project/core/theme/app_colors.dart';
import 'package:tharicki_demo_project/core/theme/app_sizes.dart';
import 'package:tharicki_demo_project/publishment/presentation/cubit/publish_cubit.dart';

class PublishPage extends StatefulWidget {
  const PublishPage({
    super.key,
    required this.navigationCubit,
  });

  final NavigationCubit navigationCubit;

  @override
  State<PublishPage> createState() => _PublishPageState();
}

class _PublishPageState extends State<PublishPage> {
  final TextEditingController _postController = TextEditingController();
  final PublishCubit publishCubit = getIt<PublishCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PublishCubit, PublishState>(
        bloc: publishCubit,
        listener: (context, state) {
          if (state is PublishSuccess) {
            showAutoDismissSuccessDialog(context, 'Success!', 'Post published successfully');
            widget.navigationCubit.changeTab(0);
          } else if (state is PublishError) {
            // Show error message
          }
        },
        builder: (context, state) {
          if (state is PublishLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  margin: const EdgeInsets.all(12),
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: TextFormField(
                    maxLines: 6,
                    maxLength: 777,
                    controller: _postController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter your message",
                      fillColor: AppColors.backgroundGrey,
                      hoverColor: AppColors.backgroundGrey,
                      filled: true,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primary),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primary),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.red),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppSizes.md),
                child: ElevatedButton(
                  onPressed: () {
                    if (_postController.text.trim().isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Please enter a message before publishing!')),
                      );
                    } else {
                      publishCubit.postPublish();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                  ),
                  child: Text(
                    'Publish',
                    style: TextStyle(
                      fontSize: AppSizes.md,
                      color: AppColors.white,
                    ),
                  ),
                ),
              )
            ],
          );
        });
  }
}
