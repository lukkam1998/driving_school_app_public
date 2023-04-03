// ignore_for_file: unused_import

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:managing_driving_school_app/common/widgets/drawer/owner_drawer.dart';
import 'package:managing_driving_school_app/core/app_router/app_router.dart';
import 'package:managing_driving_school_app/features/core_features/messages/presentation/pages/messages_page.dart';
import 'package:managing_driving_school_app/generated/l10n.dart';

import '../../../../../core/app_models/messages/open_chat_on_enter.dart';

class OwnerContactsPage extends StatefulWidget {
  final OpenChatOnEnter? openChatOnEnter;
  const OwnerContactsPage({
    this.openChatOnEnter,
    super.key,
  });

  @override
  State<OwnerContactsPage> createState() => _OwnerContactsPageState();
}

class _OwnerContactsPageState extends State<OwnerContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      drawer: const OwnerDrawer(),
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
