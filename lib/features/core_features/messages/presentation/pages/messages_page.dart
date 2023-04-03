import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/app_router/app_router.dart';
import '../../../../../core/services/user_data_service/user_data_service_cubit/user_data_service_cubit.dart';
import '../../../../../generated/l10n.dart';

import '../../../../../common/widgets/page_template/page_template.dart';
import '../../../../../core/app_models/messages/open_chat_on_enter.dart';
import '../../../../../injection_container.dart';
import '../contacts_bloc/contacts_bloc.dart';
import '../widgets/chat_avatar_shimmer.dart';
import '../widgets/chat_preview.dart';

class MessagesPage extends StatefulWidget {
  OpenChatOnEnter? openChatOnEnter;
  MessagesPage({
    this.openChatOnEnter,
    Key? key,
  }) : super(key: key);

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<ContactsBloc>()..add(const LoadUserContactsEvent()),
      child: Stack(
        children: [
          PageTemplate(
            body: Column(
              children: [
                Expanded(
                  child: SafeArea(
                    child: BlocBuilder<ContactsBloc, ContactsState>(
                      builder: (context, state) {
                        _checkOpeningChatOnEnter(state, context);
                        return state.hasError
                            ? const Center(
                                child: Text('Sorry error...'),
                              )
                            : state.isLoading
                                ? Column(
                                    children: [
                                      const SizedBox(height: 16),
                                      const ChatAvatarShimmer(),
                                      const SizedBox(height: 32),
                                      const ChatAvatarShimmer(),
                                      const SizedBox(height: 32),
                                      const ChatAvatarShimmer(),
                                      const SizedBox(height: 32),
                                      const ChatAvatarShimmer(),
                                      const SizedBox(height: 32),
                                    ],
                                  )
                                : state.contacts.isEmpty
                                    ? Center(
                                        child: Text(
                                          S.of(context).dont_have_any_contacts,
                                        ),
                                      )
                                    : ListView.builder(
                                        itemBuilder: (context, index) {
                                          final contact = state.contacts[index];
                                          return Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 12,
                                              vertical: 8,
                                            ),
                                            child: ChatPreview(
                                              contact: contact,
                                            ),
                                          );
                                        },
                                        itemCount: state.contacts.length,
                                      );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          BlocBuilder<UserDataServiceCubit, UserDataServiceState>(
            builder: (context, state) {
              if (state.userData?.userRole == 'owner') {
                return Positioned(
                  right: 10,
                  bottom: 10,
                  child: FloatingActionButton(
                    heroTag: 'fabAdd',
                    onPressed: () {
                      context.router
                          .push(const SearchContactsRouter())
                          .then((value) {
                        context
                            .read<ContactsBloc>()
                            .add(const LoadUserContactsEvent());
                      });
                    },
                    child: const Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ],
      ),
    );
  }

  void _checkOpeningChatOnEnter(ContactsState state, BuildContext context) {
    if (widget.openChatOnEnter != null &&
        !state.isLoading &&
        state.contacts.isNotEmpty) {
      final contact = state.contacts.firstWhere((element) =>
          element.contactData.userId == widget.openChatOnEnter?.userId);
      widget.openChatOnEnter = null;
      context.router.navigate(ChatPageRouter(contact: contact));
    }
  }
}
