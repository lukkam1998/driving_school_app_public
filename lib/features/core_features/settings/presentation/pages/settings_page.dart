import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../common/widgets/drawer/app_drawer.dart';
import '../../../../../common/widgets/drawer/owner_drawer.dart';
import '../../../../../common/widgets/drawer/tutor_drawer.dart';
import '../../../../../common/widgets/page_template/page_template.dart';
import '../../../../../core/services/user_data_service/user_data_service_cubit/user_data_service_cubit.dart';

// TODO LATER IF NEEDED
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return BlocBuilder<UserDataServiceCubit, UserDataServiceState>(
      builder: (context, state) {
        if (state.isLoading || state.userData == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        final user = state.userData!;
        final isUserOwner = user.userRole == 'owner';
        final isUserTutor = user.userRole == 'tutor';

        return Scaffold(
          backgroundColor: colorScheme.primary,
          drawer: isUserOwner
              ? const OwnerDrawer()
              : isUserTutor
                  ? const TutorDrawer()
                  : const AppDrawer(),
          appBar: AppBar(
            elevation: 0,
            title: Text(
              'SETTINGS',
              style: textTheme.labelMedium,
            ),
          ),
          body: const PageTemplate(
            body: Center(child: Text('Settings')),
          ),
        );
      },
    );
  }
}
