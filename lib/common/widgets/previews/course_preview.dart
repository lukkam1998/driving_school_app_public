import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../core/app_models/lessons/user_course_data.dart';
import '../../../core/app_models/lessons/user_lesson.dart';
import '../../../core/app_router/app_router.dart';
import '../../../generated/l10n.dart';
import 'course_preview_left.dart';
import 'course_preview_right.dart';

class CoursePreview extends StatelessWidget {
  const CoursePreview({
    Key? key,
    required this.hoursLeft,
    required this.closestLesson,
    required this.userCourseData,
    this.isUserTutor = false,
  }) : super(key: key);

  final bool isUserTutor;
  final double hoursLeft;
  final UserLesson? closestLesson;
  final UserCourseData userCourseData;

  void _onMenuSelected(String value, BuildContext context) {
    if (value == S.of(context).start_lesson) {
      context.router.replace(StartLessonRouter(
        closestLesson: closestLesson,
        userCourseData: userCourseData,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    final Set<String> popupOptions = {(S.of(context).start_lesson)};
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final strings = S.of(context);

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: colorScheme.secondary.withOpacity(0.3),
                blurRadius: 1.0,
                spreadRadius: 0.5,
                offset:
                    const Offset(2.0, 2.0), // shadow direction: bottom right
              )
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                colorScheme.primary,
                colorScheme.onSurface,
              ],
            ),
          ),
          height: MediaQuery.of(context).size.height * (1 / 4) + 20,
          clipBehavior: Clip.hardEdge,
          margin: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                width: double.infinity,
                child: Center(
                  child: Text(
                    '${strings.categorie} ${userCourseData.course.category}',
                    style: textTheme.headlineLarge,
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: CoursePreviewLeft(
                        userCourseData: userCourseData,
                        isUserTutor: isUserTutor,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      child: CoursePreviewRight(
                        userCourseData: userCourseData,
                        hoursLeft: hoursLeft,
                        closestLesson: closestLesson,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        isUserTutor
            ? Positioned(
                right: 10,
                top: 5,
                child: PopupMenuButton<String>(
                  onSelected: (value) {
                    _onMenuSelected(value, context);
                  },
                  itemBuilder: (BuildContext context) {
                    return popupOptions.map((String choice) {
                      return PopupMenuItem<String>(
                        value: choice,
                        child: Text(choice),
                      );
                    }).toList();
                  },
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
