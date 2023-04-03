import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:managing_driving_school_app/core/app_router/app_router.dart';

import '../../../../../common/widgets/avatars/app_circular_avatar.dart';
import '../../../../../core/app_models/user_models/user_model.dart';

class OwnerUserPreview extends StatelessWidget {
  final UserModel user;
  const OwnerUserPreview({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                context.router.push(UserDetailsRouter(userModel: user));
              },
              child: Row(
                children: [
                  AppCircularAvatar(
                    imagePath: user.imagePath,
                    size: 50,
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${user.name} ${user.surname}',
                        style: textTheme.headlineSmall?.copyWith(fontSize: 16),
                      ),
                      Text(
                        user.email,
                        style: textTheme.headlineMedium,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
