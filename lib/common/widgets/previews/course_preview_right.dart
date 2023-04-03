import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/app_models/lessons/user_course_data.dart';
import '../../../core/app_models/lessons/user_lesson.dart';
import '../../../core/app_router/app_router.dart';
import '../../../features/user_features/driving_lessons/presentation/pages/driving_lessons_page.dart';
import '../../../generated/l10n.dart';

class CoursePreviewRight extends StatelessWidget {
  const CoursePreviewRight({
    super.key,
    required this.userCourseData,
    required this.hoursLeft,
    required this.closestLesson,
  });

  final UserCourseData userCourseData;
  final double hoursLeft;
  final UserLesson? closestLesson;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final doesCourseEnd = userCourseData.userCourse.doesCourseEnd ?? false;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                doesCourseEnd
                    ? Text(
                        S.of(context).course_ended,
                        style: textTheme.labelMedium?.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    : Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Text(
                            S.of(context).hours,
                            style: textTheme.labelMedium?.copyWith(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Positioned(
                            bottom: -12,
                            left: 0,
                            child: Text(
                              '$hoursLeft/${userCourseData.userCourse.hoursTotal}',
                              style: textTheme.headlineMedium,
                            ),
                          ),
                        ],
                      ),
                const SizedBox(height: 8),
                closestLesson == null
                    ? const SizedBox()
                    : Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Text(
                            S.of(context).closest_lesson,
                            style:
                                textTheme.labelMedium?.copyWith(fontSize: 14),
                          ),
                          Positioned(
                            bottom: -12,
                            left: 0,
                            child: Text(
                              formatter.format(closestLesson!.dayOfLesson),
                              style: textTheme.headlineMedium,
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          ],
        ),
        const Spacer(),
        Center(
          child: FittedBox(
            child: TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: const Size(40, 30),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                alignment: Alignment.center,
              ),
              onPressed: () {
                context.router.navigate(
                  DrivingLessonsRouter(
                    userCourseData: userCourseData,
                    key: UniqueKey(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: colorScheme.secondary,
                    size: 18,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    doesCourseEnd
                        ? S.of(context).check_rides
                        : S.of(context).plan_lesson,
                    style: textTheme.headlineSmall?.copyWith(
                      color: colorScheme.secondary,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: colorScheme.secondary,
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
