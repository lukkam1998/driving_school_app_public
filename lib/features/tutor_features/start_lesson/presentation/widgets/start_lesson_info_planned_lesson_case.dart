import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../core/app_models/lessons/user_lesson.dart';
import '../../../../../generated/l10n.dart';

class StartLessonInfoLessonPlannedCase extends StatelessWidget {
  const StartLessonInfoLessonPlannedCase({
    Key? key,
    required this.lesson,
  }) : super(key: key);

  final UserLesson lesson;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final startHour = DateFormat('HH:mm').format(lesson.startOfLesson);
    final endHour = DateFormat('HH:mm').format(lesson.endOfLesson);
    final dayOfLesson = DateFormat('dd/MM/yyyy').format(
      lesson.dayOfLesson,
    );

    return Flexible(
      child: Column(
        children: [
          Row(), // to expand column maximally in x axis
          Flexible(
            child: Text(
              '${S.of(context).start_lesson} $dayOfLesson',
              style: textTheme.headlineSmall?.copyWith(fontSize: 16),
            ),
          ),
          Text(
            '${S.of(context).hours} $startHour - $endHour',
            style: textTheme.headlineSmall?.copyWith(fontSize: 16),
          )
        ],
      ),
    );
  }
}
