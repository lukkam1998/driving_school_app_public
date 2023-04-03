import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../core/app_router/app_router.dart';
import '../../../../../generated/l10n.dart';

class StartLessonTopWidget extends StatelessWidget {
  const StartLessonTopWidget({
    super.key,
    required this.isLessonGoing,
    required this.hasLessonTookPlace,
    required this.didLessonEnd,
  });

  final bool isLessonGoing;
  final bool hasLessonTookPlace;
  final bool didLessonEnd;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            isLessonGoing
                ? const SizedBox()
                : IconButton(
                    onPressed: () {
                      context.router.replace(
                        const TutorHomePageRouter(),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                hasLessonTookPlace
                    ? S.of(context).lesson_has_took_place
                    : isLessonGoing
                        ? S.of(context).lesson_started
                        : didLessonEnd
                            ? S.of(context).lesson_ended_with
                            : S.of(context).start_lesson_with,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontSize: 22),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
