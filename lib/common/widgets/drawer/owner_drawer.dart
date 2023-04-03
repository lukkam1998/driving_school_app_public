import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/app_router/app_router.dart';
import '../../../features/core_features/login/presentation/sign_in_bloc/sign_in_bloc.dart';
import '../../../generated/l10n.dart';
import 'drawer_item.dart';

class OwnerDrawer extends StatelessWidget {
  const OwnerDrawer({
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
                GestureDetector(
                  onTap: () {
                    context.router.replace(const OwnerHomePageRouter());
                  },
                  child: DrawerItem(
                    icon: Icons.home,
                    title: S.of(context).home,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.router.replace(const UsersInfoRouter());
                  },
                  child: DrawerItem(
                    icon: Icons.manage_accounts,
                    title: S.of(context).acc_manager,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.router.replace(const SchoolCarsRouter());
                  },
                  child: DrawerItem(
                    icon: Icons.car_rental,
                    title: S.of(context).cars,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.router.replace(OwnerContactsRouter());
                  },
                  child: DrawerItem(
                    icon: Icons.message,
                    title: S.of(context).messages,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.router.replace(const ManageCoursesRouter());
                  },
                  child: DrawerItem(
                    icon: Icons.calendar_month_outlined,
                    title: S.of(context).manage_courses,
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
