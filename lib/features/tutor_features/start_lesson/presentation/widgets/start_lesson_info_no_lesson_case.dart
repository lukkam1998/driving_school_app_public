import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../core/app_models/lessons/user_course_data.dart';
import '../../../../../core/app_models/user_models/user_restricted_model.dart';
import '../../../../../core/app_router/app_router.dart';
import '../../../../../generated/l10n.dart';
import '../../../../core_features/login/presentation/widgets/app_button.dart';

class StartLessonInfoNoLessonCase extends StatelessWidget {
  const StartLessonInfoNoLessonCase({
    Key? key,
    required this.userData,
    required this.userCourseData,
  }) : super(key: key);

  final UserRestrictedModel userData;
  final UserCourseData userCourseData;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Flexible(
      child: Column(
        children: [
          Row(),
          Text(
            S.of(context).no_lesson_planned_with('${userData.name}'),
            style: textTheme.headlineSmall?.copyWith(fontSize: 16),
          ),
          const SizedBox(height: 8),
          const Spacer(),
          AppButton(
            buttonText: S.of(context).plan_lesson,
            onPressed: () {
              context.router.push(
                DrivingLessonsRouter(
                  userCourseData: userCourseData,
                  key: UniqueKey(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
