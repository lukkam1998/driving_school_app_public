import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../core/app_models/courses/user_course_details.dart';
import '../../../../../generated/l10n.dart';

class UserCourseDetailsPreview extends StatelessWidget {
  final UserCourseDetails userCourseDetails;
  final bool isTutor;
  const UserCourseDetailsPreview({
    required this.userCourseDetails,
    required this.isTutor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double hoursLeft = 0;
    if (userCourseDetails.userCourse.isApproved) {
      hoursLeft = userCourseDetails.userCourse.hoursTotal -
          userCourseDetails.userCourse.hoursLeft!;
    }
    String userType = isTutor ? S.of(context).apprentice : S.of(context).tutor;
    return Container(
      margin: const EdgeInsets.fromLTRB(16,8,16,8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${S.of(context).categorie} ${userCourseDetails.course.category}',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(fontSize: 18),
                  ),
                  const SizedBox(width: 20),
                  userCourseDetails.userCourse.isApproved
                      ? const SizedBox()
                      : Text(
                          S.of(context).wait_for_confirmation,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(fontSize: 12),
                        )
                ],
              ),
              Text(
                '${S.of(context).date_of_enroll} ${DateFormat('dd-MM-yyyy').format(userCourseDetails.userCourse.dateOfEnroll)}',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontSize: 12),
              ),
              Text(
                '${S.of(context).hours} $hoursLeft / ${userCourseDetails.userCourse.hoursTotal}',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontSize: 12),
              ),
              userCourseDetails.userCourse.isApproved
                  ? Text(
                      '$userType ${userCourseDetails.secondUserData?.name} ${userCourseDetails.secondUserData?.surname}')
                  : const SizedBox(),
            ],
          )
        ],
      ),
    );
  }
}
