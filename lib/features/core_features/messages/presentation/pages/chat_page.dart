// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:managing_driving_school_app/common/widgets/avatars/app_circular_avatar.dart';
import 'package:managing_driving_school_app/common/widgets/page_template/page_template.dart';
import 'package:managing_driving_school_app/features/core_features/messages/presentation/widgets/message_container_builder.dart';
import '../../../../../core/app_models/messages/contact.dart';
import '../../../../../core/app_models/messages/message.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../injection_container.dart';
import '../messages_bloc/messages_bloc.dart';
import '../widgets/chat_app_bar.dart';
import '../widgets/message_text_field.dart';

class ChatPage extends StatefulWidget {
  final Contact contact;

  const ChatPage({
    super.key,
    required this.contact,
  });

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _messagesController = TextEditingController();
  final ScrollController _listViewScrollController = ScrollController();

  @override
  void dispose() {
    _messagesController.dispose();
    _listViewScrollController.dispose();
    super.dispose();
  }

  void _sendMessage(BuildContext ctx) {
    final messageBody = _messagesController.text;
    if (messageBody == '' || messageBody.isEmpty) {
      return;
    }
    ctx.read<MessagesBloc>().add(
          SendMessageEvent(messageBody, widget.contact.chatId),
        );
    _messagesController.clear();
  }

  void _scrollToBottom() {

    _listViewScrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 200),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return BlocProvider(
      create: (context) =>
          sl<MessagesBloc>()..add(ConnectWithChatEvent(widget.contact.chatId)),
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size(double.infinity, 60),
            child: ChatAppBar(
              contact: widget.contact,
            )),
        backgroundColor: colorScheme.primary,
        body: PageTemplate(
          body: Column(
            children: [
              Expanded(
                child: BlocBuilder<MessagesBloc, MessagesState>(
                  builder: (context, state) {
                    return state.isLoading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : state.chatStream == null
                            ? const SizedBox()
                            : StreamBuilder(
                                stream: state.chatStream,
                                builder: (context, snapshot) {
                                  int? listLength = snapshot.data?.docs.length;
                                  listLength ??= 0;
                                  return ListView.builder(
                                    reverse: true,
                                    controller: _listViewScrollController,
                                    itemBuilder: (context, index) {
                                      final Message message = Message.fromJson(
                                        snapshot.data!.docs[index].data(),
                                      );
                                      return MessageContainerBuilder(
                                        message: message,
                                        key: UniqueKey(),
                                      );
                                    },
                                    itemCount: listLength,
                                  );
                                },
                              );
                  },
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Flexible(
                        child: MessageTextField(
                          onTap: _scrollToBottom,
                          controller: _messagesController,
                        ),
                      ),
                      const SizedBox(width: 12),
                      ClipOval(
                        child: Material(
                          color: colorScheme.secondary, // Button color
                          child: BlocBuilder<MessagesBloc, MessagesState>(
                            builder: (context, state) {
                              return InkWell(
                                splashColor:
                                    colorScheme.primary, // Splash color
                                onTap: () {
                                  _sendMessage(context);
                                },
                                child: SizedBox(
                                  width: 56,
                                  height: 56,
                                  child: Icon(
                                    Icons.send_rounded,
                                    color: colorScheme.onBackground,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
