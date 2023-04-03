import 'package:flutter/material.dart';

import '../../../../../core/app_models/lessons/user_lesson.dart';

class CalendarEventBuilder extends StatelessWidget {
  final UserLesson userLesson;
  final bool isBeforeToday;
  const CalendarEventBuilder({
    required this.userLesson,
    required this.isBeforeToday,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    Color backgroundColor = Colors.transparent;
    IconData? iconData;

    if (userLesson.hasTookPlace && userLesson.isApproved) {
      backgroundColor = colorScheme.secondary;
      iconData = null;
    } else if (!userLesson.hasTookPlace && isBeforeToday) {
      backgroundColor = Colors.red;
      iconData = Icons.cancel_outlined;
    } else if (userLesson.isModified) {
      backgroundColor = Colors.red;
      iconData = Icons.warning;
    } else if (userLesson.isApproved && !isBeforeToday) {
      backgroundColor = Colors.green;
      iconData = Icons.check;
    } else if (!userLesson.isApproved && !isBeforeToday) {
      backgroundColor = Colors.orange.shade400;
      iconData = Icons.timer_outlined;
    }

    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(iconData, size: 12),
      ),
    );
  }
}
