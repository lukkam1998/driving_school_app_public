import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:managing_driving_school_app/features/user_features/driving_lessons/presentation/widgets/text_with_icon.dart';

import '../../../../../core/app_models/lessons/user_lesson.dart';
import '../../../../../generated/l10n.dart';
import '../plan_lesson_cubit/plan_lesson_cubit.dart';

class LessonModifiedCaseWidget extends StatelessWidget {
  const LessonModifiedCaseWidget({
    super.key,
    required this.lesson,
  });

  final UserLesson lesson;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 4),
        TextWithIcon(
          text: S.of(context).modified_confirm,
          icon: Icons.change_circle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                context.read<PlanLessonCubit>().cancelLesson(
                      lesson.lessonId!,
                    );
              },
              child: Text(
                S.of(context).cancel,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w300,
                    ),
              ),
            ),
            const SizedBox(width: 8),
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
        ),
      ],
    );
  }
}
