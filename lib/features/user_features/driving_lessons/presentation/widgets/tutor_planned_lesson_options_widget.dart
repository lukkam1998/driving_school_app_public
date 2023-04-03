import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../plan_lesson_cubit/plan_lesson_cubit.dart';

import '../../../../../core/app_models/lessons/user_lesson.dart';
import '../../../../../core/providers/driving_lessons_provider/driving_lessons_bloc/driving_lessons_bloc.dart';
import '../../../../../generated/l10n.dart';
import 'modify_lesson_dialog.dart';

class TutorPlannedLessonOptionsWidget extends StatelessWidget {
  const TutorPlannedLessonOptionsWidget({
    Key? key,
    required this.lesson,
  }) : super(key: key);

  final UserLesson lesson;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {
            _showModifyLessonDialog(context).then((value) {
              if (value == true) {
                context.read<DrivingLessonsBloc>().add(
                      const LoadUserLessonsDataEvent(),
                    );
              }
            });
          },
          child: Text(
            S.of(context).modify_lesson,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
        TextButton(
          onPressed: () {
            context.read<PlanLessonCubit>().confirmLesson(lesson);
          },
          child: Text(
            S.of(context).confirm,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
      ],
    );
  }

  Future<dynamic> _showModifyLessonDialog(
    BuildContext context,
  ) {
    return showDialog(
      context: context,
      builder: (context) {
        final startHour = DateFormat('HH').format(lesson.startOfLesson);
        final endHour = DateFormat('HH').format(lesson.endOfLesson);

        ValueNotifier<int> startHourNotifier =
            ValueNotifier(int.parse(startHour));
        ValueNotifier<int> endHourNotifier = ValueNotifier(int.parse(endHour));
        return ModifyLessonDialog(
          startHourNotifier: startHourNotifier,
          endHourNotifier: endHourNotifier,
          lesson: lesson,
        );
      },
    );
  }
}
