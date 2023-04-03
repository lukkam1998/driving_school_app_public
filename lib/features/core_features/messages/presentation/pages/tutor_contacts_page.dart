import 'package:flutter/material.dart';
import '../../../../../common/widgets/drawer/tutor_drawer.dart';
import 'messages_page.dart';
import '../../../../../generated/l10n.dart';

import '../../../../../core/app_models/messages/open_chat_on_enter.dart';

class TutorContactsPage extends StatefulWidget {
  final OpenChatOnEnter? openChatOnEnter;
  const TutorContactsPage({
    this.openChatOnEnter,
    super.key,
  });

  @override
  State<TutorContactsPage> createState() => _TutorContactsPageState();
}

class _TutorContactsPageState extends State<TutorContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      drawer: const TutorDrawer(),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          S.of(context).messages,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ),
      body: SafeArea(
        child: MessagesPage(
          openChatOnEnter: widget.openChatOnEnter,
        ),
      ),
    );
  }
}
