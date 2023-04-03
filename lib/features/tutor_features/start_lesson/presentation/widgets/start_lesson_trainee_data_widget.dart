import 'package:flutter/material.dart';

import '../../../../../common/widgets/avatars/app_circular_avatar.dart';
import '../../../../../core/app_models/user_models/user_restricted_model.dart';

class StartLessonTraineeDataWidget extends StatelessWidget {
  const StartLessonTraineeDataWidget({
    super.key,
    required this.heroTag,
    required this.userData,
  });

  final UserRestrictedModel userData;
  final String heroTag;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Hero(
          tag: heroTag,
          child: AppCircularAvatar(
            size: 60,
            imagePath: userData.imagePath,
          ),
        ),
        const SizedBox(width: 12),
        Text(
          '${userData.name} ${userData.surname}',
          style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 22),
        ),
      ],
    );
  }
}
