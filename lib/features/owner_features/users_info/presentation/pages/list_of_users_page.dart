import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../common/widgets/page_template/page_template.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../injection_container.dart';
import '../users_info_bloc/users_info_bloc.dart';
import '../widgets/owner_user_preview.dart';

class ListOfUsersPage extends StatefulWidget {
  final bool isInstructorsPreview;
  const ListOfUsersPage({
    super.key,
    required this.isInstructorsPreview,
  });

  @override
  State<ListOfUsersPage> createState() => _ListOfUsersPageState();
}

class _ListOfUsersPageState extends State<ListOfUsersPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<UsersInfoBloc>()
        ..add(
          GetUsersInfoEvent(
            isInstructorsPreview: widget.isInstructorsPreview,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            S.of(context).users_info,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: PageTemplate(
          body: BlocBuilder<UsersInfoBloc, UsersInfoState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (state.usersInfo.isEmpty) {
                return Center(
                  child: Text(S.of(context).no_users),
                );
              }

              return ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 12);
                },
                itemBuilder: (context, index) {
                  return OwnerUserPreview(user: state.usersInfo[index]);
                },
                itemCount: state.usersInfo.length,
                padding: const EdgeInsets.all(16),
              );
            },
          ),
        ),
      ),
    );
  }
}
