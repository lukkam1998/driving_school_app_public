import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/app_router/app_router.dart';
import '../../../features/core_features/login/presentation/sign_in_bloc/sign_in_bloc.dart';
import '../../../generated/l10n.dart';
import 'drawer_item.dart';
import 'drawer_user_info.dart';

class TutorDrawer extends StatelessWidget {
  const TutorDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * (7 / 10),
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: SafeArea(
        child: BlocListener<SignInBloc, SignInState>(
          listener: (context, state) {
            context.router.replace(const SignInRoute());
          },
          child: SizedBox(
            width: MediaQuery.of(context).size.width * (7 / 10),
            child: Column(
              children: [
                const SizedBox(height: 40),
                const DrawerUserInfo(),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    color: Theme.of(context).colorScheme.secondary,
                    thickness: 1,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.router.replace(const TutorHomePageRouter());
                  },
                  child: DrawerItem(
                    icon: Icons.car_repair_rounded,
                    title: S.of(context).your_lessons,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.router.replace(const TutorTakeCoursesRouter());
                  },
                  child: DrawerItem(
                    icon: Icons.stacked_bar_chart_rounded,
                    title: S.of(context).take_course,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.router.replace(TutorContactsRouter());
                  },
                  child: DrawerItem(
                    icon: Icons.message,
                    title: S.of(context).messages,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.router.replace(const SettingsRouter());
                  },
                  child: DrawerItem(
                    icon: Icons.settings,
                    title: S.of(context).settings,
                  ),
                ),
                const Spacer(),
                DrawerItem(
                  icon: Icons.read_more,
                  title: S.of(context).signout,
                  isDividerVisible: false,
                  onPressed: () {
                    context.read<SignInBloc>().add(const SignOutUserEvent());
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
