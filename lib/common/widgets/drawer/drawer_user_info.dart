import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../../core/app_models/user_models/user_model.dart';
import '../../../core/services/user_data_service/user_data_service.dart';
import '../../../injection_container.dart';
import '../avatars/app_circular_avatar.dart';

class DrawerUserInfo extends StatelessWidget {
  const DrawerUserInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserModel userModel = sl<UserDataService>().authStream.value;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AppCircularAvatar(imagePath: userModel.imagePath),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    '${userModel.name} ${userModel.surname}',
                    maxLines: 1,
                    minFontSize: 10,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  AutoSizeText(
                    userModel.email,
                    minFontSize: 10,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
