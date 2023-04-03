import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

class PlanLessonTextButton extends StatelessWidget {
  final VoidCallback onPressed;

  const PlanLessonTextButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final strings = S.of(context);
    return TextButton(
      style: TextButton.styleFrom(
        elevation: 1,
        backgroundColor: Theme.of(context).colorScheme.onBackground,
      ),
      onPressed: onPressed,
      child: Text(
        strings.plan_lesson,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontSize: 18,
            ),
      ),
    );
  }
}
