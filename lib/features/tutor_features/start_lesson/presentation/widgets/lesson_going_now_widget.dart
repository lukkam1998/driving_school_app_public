import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

class LessonGoingNowWidget extends StatelessWidget {
  const LessonGoingNowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          S.of(context).tracking_is_live,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 18),
        ),
        const SizedBox(width: 8),
        SizedBox(
          height: 20,
          width: 20,
          child: CircularProgressIndicator(
            color: Theme.of(context).colorScheme.primary,
          ),
        )
      ],
    );
  }
}
