import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../generated/l10n.dart';
import 'lesson_going_now_widget.dart';

class LessonStateWidget extends StatelessWidget {
  const LessonStateWidget({
    super.key,
    required this.isLessonGoing,
    required this.startDate,
    required this.endDate,
    required this.didLessonStart,
    required this.didLessonEnd,
  });

  final bool isLessonGoing;
  final DateTime? startDate;
  final DateTime? endDate;
  final bool didLessonStart;
  final bool didLessonEnd;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(),
        didLessonStart
            ? Text(
                '${S.of(context).lesson_started_at} ${DateFormat('HH:mm').format(startDate!)}',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontSize: 18),
              )
            : const SizedBox(),
        didLessonEnd
            ? Text(
                '${S.of(context).lesson_ended_at} ${DateFormat('HH:mm').format(endDate!)}',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontSize: 18),
              )
            : const SizedBox(),
        isLessonGoing ? const LessonGoingNowWidget() : const SizedBox(),
      ],
    );
  }
}
