import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiffy/jiffy.dart';
import '../../../../../core/app_models/messages/contact.dart';
import '../../../../../core/app_router/app_router.dart';
import '../contacts_bloc/contacts_bloc.dart';

import 'chat_avatar.dart';

class ChatPreview extends StatelessWidget {
  final Contact contact;
  const ChatPreview({
    Key? key,
    required this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final endOfMessage = contact.lastMessage != null
        ? contact.lastMessage!.messageBody.length > 15
            ? '...'
            : ''
        : '';

    final lastmessage = contact.lastMessage != null
        ? contact.lastMessage!.messageBody.length > 15
            ? '${contact.lastMessage?.messageBody.substring(1, 15)}$endOfMessage' // ignore: lines_longer_than_80_chars
            : contact.lastMessage?.messageBody
        : '';

    return BlocBuilder<ContactsBloc, ContactsState>(
      builder: (context, state) {
        return Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(16),
            onTap: () {
              context.router
                  .push(ChatPageRouter(contact: contact))
                  .then((value) {
                context.read<ContactsBloc>().add(const LoadUserContactsEvent());
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              width: double.infinity,
              child: Row(
                children: [
                  Hero(
                    tag: contact.chatId,
                    child: ChatAvatar(
                      imageUrl: contact.contactData.imagePath,
                      isOnline: false,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${contact.contactData.name!} ${contact.contactData.surname}', // ignore: lines_longer_than_80_chars
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                contact.lastMessage == null
                                    ? const SizedBox()
                                    : Text(
                                        lastmessage ?? '',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                contact.lastMessage == null
                                    ? ''
                                    : Jiffy(
                                        contact.lastMessage?.timestamp.toDate(),
                                      ).format('h:mm'),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              contact.messageCount == 0
                                  ? const SizedBox()
                                  : Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '${contact.messageCount}',
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
