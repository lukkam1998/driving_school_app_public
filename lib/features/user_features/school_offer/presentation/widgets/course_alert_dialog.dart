import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/app_models/courses/course.dart';
import '../../../../../core/app_models/promotions/promotion.dart';
import '../../../../../generated/l10n.dart';
import '../school_enroll_course_cubit/school_enroll_course_cubit.dart';

class CourseAlertDialog extends StatelessWidget {
  final bool isLoading;
  final bool hasError;
  final bool hasSucced;
  final String? errorMessage;
  final Promotion? promotion;
  final Course course;
  const CourseAlertDialog({
    Key? key,
    this.isLoading = false,
    this.hasSucced = false,
    this.hasError = false,
    this.errorMessage,
    required this.promotion,
    required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title;
    if (hasSucced) {
      title = S.of(context).enroll_succeed;
    } else if (hasError) {
      title = errorMessage ?? S.of(context).enroll_failure;
    } else {
      title = S.of(context).confirm_course_dialog(course.category);
    }

    return AlertDialog(
      title: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(fontSize: 16),
            ),
      actions: [
        isLoading
            ? const SizedBox()
            : Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  hasSucced
                      ? const SizedBox()
                      : TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            hasError ? S.of(context).close : S.of(context).no,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(fontSize: 16),
                          ),
                        ),
                  TextButton(
                    onPressed: () {
                      hasSucced
                          ? Navigator.of(context).pop()
                          : context
                              .read<SchoolEnrollCourseCubit>()
                              .enrollUserToCourse(
                                course,
                                promotion,
                              );
                    },
                    child: Text(
                      hasError
                          ? S.of(context).try_again
                          : hasSucced
                              ? S.of(context).close
                              : S.of(context).yes,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
