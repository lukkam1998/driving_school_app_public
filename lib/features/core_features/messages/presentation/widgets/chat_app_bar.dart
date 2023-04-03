import 'package:flutter/material.dart';
import '../../../../../common/widgets/avatars/app_circular_avatar.dart';
import '../../../../../core/app_models/messages/contact.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({
    super.key,
    required this.contact,
  });

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      titleSpacing: -10,
      title: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            Hero(
              tag: contact.chatId,
              child: AppCircularAvatar(
                imagePath: contact.contactData.imagePath,
                size: 48,
              ),
            ),
            const SizedBox(width: 12),
            Text(
              '${contact.contactData.name} ${contact.contactData.surname}',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
