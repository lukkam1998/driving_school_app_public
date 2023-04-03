import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/app_models/lessons/user_course_data.dart';
import '../../../core/app_models/messages/open_chat_on_enter.dart';
import '../../../core/app_router/app_router.dart';
import '../../../generated/l10n.dart';
import '../avatars/app_circular_avatar.dart';

class CoursePreviewLeft extends StatelessWidget {
  const CoursePreviewLeft({
    super.key,
    required this.userCourseData,
    required this.isUserTutor,
  });

  final UserCourseData userCourseData;
  final bool isUserTutor;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Hero(
            tag: 'startLesson${userCourseData.userCourse.userCourseId}',
            child: AppCircularAvatar(
              size: 64,
              imagePath: userCourseData.userData.imagePath,
            ),
          ),
          const SizedBox(height: 8),
          FittedBox(
            child: Text(
              '${userCourseData.userData.name} ${userCourseData.userData.surname}', // ignore: lines_longer_than_80_chars
              style: textTheme.bodySmall?.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Spacer(),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(8),
              minimumSize: const Size(50, 30),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              alignment: Alignment.centerLeft,
            ),
            onPressed: isUserTutor
                ? () {
                    context.router.navigate(
                      TutorContactsRouter(
                        openChatOnEnter: OpenChatOnEnter(
                          userCourseData.userData.userId,
                        ),
                      ),
                    );
                  }
                : () {
                    context.router.navigate(
                      MessagesRouter(
                        openChatOnEnter: OpenChatOnEnter(
                          userCourseData.userData.userId,
                        ),
                      ),
                    );
                  },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.message,
                      color: colorScheme.onPrimary,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      S.of(context).send_message,
                      style: textTheme.headlineSmall?.copyWith(
                        color: colorScheme.onPrimary,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
