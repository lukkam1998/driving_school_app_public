import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../../../common/snackbar/app_snackbar.dart';
import '../../../../../common/widgets/avatars/app_circular_avatar.dart';
import '../../../../../core/app_models/courses/user_course.dart';
import '../../../../../core/app_models/user_models/user_restricted_model.dart';
import '../../../../core_features/login/presentation/widgets/app_button.dart';
import '../tutor_take_courses_bloc/tutor_take_courses_bloc.dart';

import '../../../../../core/app_models/courses/course.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../injection_container.dart';
import '../take_course_cubit/take_course_cubit.dart';

class CoursesToTakeContainer extends StatefulWidget {
  final UserCourse userCourse;
  final Course course;
  final UserRestrictedModel userRestrictedModel;
  const CoursesToTakeContainer({
    required this.userCourse,
    required this.course,
    required this.userRestrictedModel,
    super.key,
  });

  @override
  State<CoursesToTakeContainer> createState() => _CoursesToTakeContainerState();
}

class _CoursesToTakeContainerState extends State<CoursesToTakeContainer> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final strings = S.of(context);
    final dateFormatter = DateFormat('yyyy-MM-dd');
    final formattedDate = dateFormatter.format(widget.userCourse.dateOfEnroll);

    return BlocProvider(
      create: (context) => sl<TakeCourseCubit>(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          color: colorScheme.primary,
          child: Column(
            children: [
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    AppCircularAvatar(
                      imagePath: widget.userRestrictedModel.imagePath,
                      size: 64,
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${strings.categorie} ${widget.course.category}',
                          style:
                              textTheme.headlineSmall?.copyWith(fontSize: 20),
                        ),
                        Text(
                          '${widget.userRestrictedModel.name} ${widget.userRestrictedModel.surname}',
                          style:
                              textTheme.headlineMedium?.copyWith(fontSize: 16),
                        ),
                        AutoSizeText(
                          minFontSize: 10,
                          maxFontSize: 16,
                          '${strings.date_of_enroll}: $formattedDate',
                          style:
                              textTheme.headlineMedium?.copyWith(fontSize: 8),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: BlocConsumer<TakeCourseCubit, TakeCourseState>(
                      listener: (context, state) {
                        state.whenOrNull(
                          failure: (isLoading) {
                            AppSnackbar.showSnackbar(
                              context,
                              'Error',
                            );
                          },
                          success: (isLoading) {
                            AppSnackbar.showSnackbar(
                              context,
                              strings.student_taken,
                            );
                            // Reload unapproved courses
                            context.read<TutorTakeCoursesBloc>().add(
                                  const LoadUnapprovedCoursesEvent(),
                                );
                          },
                        );
                      },
                      builder: (context, state) {
                        return AppButton(
                          isLoading: state.isLoading,
                          buttonText: strings.confirm,
                          isTopCornersRounded: false,
                          onPressed: () {
                            context
                                .read<TakeCourseCubit>()
                                .takeCourse(widget.userCourse);
                          },
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
