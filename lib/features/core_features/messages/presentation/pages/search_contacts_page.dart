import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:managing_driving_school_app/common/snackbar/app_snackbar.dart';
import '../../../../../common/widgets/avatars/app_circular_avatar.dart';
import '../../../../../common/widgets/page_template/page_template.dart';
import '../../../../../common/widgets/text_fields/main_app_textfield.dart';
import '../contacts_bloc/contacts_bloc.dart';

import '../../../../../generated/l10n.dart';
import '../../../../../injection_container.dart';

class SearchContactsPage extends StatefulWidget {
  const SearchContactsPage({
    super.key,
  });

  @override
  State<SearchContactsPage> createState() => _SearchContactsPageState();
}

class _SearchContactsPageState extends State<SearchContactsPage> {
  final TextEditingController searchController = TextEditingController();
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void searchUsers(BuildContext context) {
    final isValid = _form.currentState?.validate();
    if (!isValid!) {
      return;
    }
    context.read<ContactsBloc>().add(
          SearchContactEvent(
            searchController.text,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ContactsBloc>(),
      child: BlocBuilder<ContactsBloc, ContactsState>(
        builder: (context, state) {
          return BackButtonListener(
            onBackButtonPressed: () async {
              context.router.pop(true);
              return true;
            },
            child: Scaffold(
              appBar: AppBar(
                leading: BackButton(onPressed: () {
                  context.router.pop(true);
                }),
                elevation: 0,
                title: Text(
                  S.of(context).search_contacts,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              backgroundColor: Theme.of(context).colorScheme.primary,
              body: PageTemplate(
                body: Form(
                  key: _form,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 12),
                        MainAppTextField(
                          hintText: S.of(context).search_by_surname,
                          controller: searchController,
                          validator: (string) {
                            if (string == '') {
                              return 'This field cannot be empty';
                            }
                            return null;
                          },
                          textInputAction: TextInputAction.done,
                          fillColor: Theme.of(context).colorScheme.primary,
                        ),
                        const SizedBox(height: 12),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton.icon(
                            onPressed: () {
                              searchUsers(context);
                            },
                            icon: Icon(
                              Icons.search,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            label: Text(
                              S.of(context).search,
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ),
                        ),
                        BlocConsumer<ContactsBloc, ContactsState>(
                          listener: (context, state) {
                            if (state.doesAddingContactSucced) {
                              AppSnackbar.showSnackbar(
                                context,
                                S.of(context).add_contact_succed,
                              );
                              searchUsers(context);
                            }
                          },
                          builder: (context, state) {
                            if (state.isLoading) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            if (state.foundUsers.isEmpty) {
                              return Center(
                                child: Text(S.of(context).no_users_found),
                              );
                            }
                            return Expanded(
                              child: ListView.builder(
                                itemCount: state.foundUsers.length,
                                itemBuilder: (context, index) {
                                  String role = '';
                                  if (state.foundUsers[index].userRole! ==
                                      'owner') {
                                    role = S.of(context).owner;
                                  } else if (state
                                          .foundUsers[index].userRole! ==
                                      'tutor') {
                                    role = S.of(context).tutor;
                                  } else {
                                    role = S.of(context).apprentice;
                                  }
                                  return Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 4),
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppCircularAvatar(
                                          imagePath:
                                              state.foundUsers[index].imagePath,
                                          size: 50,
                                        ),
                                        const SizedBox(width: 12),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '${state.foundUsers[index].name} ${state.foundUsers[index].surname}', // ignore: lines_longer_than_80_chars
                                            ),
                                            Text(role),
                                          ],
                                        ),
                                        const Spacer(),
                                        IconButton(
                                          onPressed: () {
                                            context.read<ContactsBloc>().add(
                                                  AddContactEvent(
                                                    state.foundUsers[index]
                                                        .userId,
                                                  ),
                                                );
                                          },
                                          icon: const Icon(Icons.add),
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
