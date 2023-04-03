import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/drawer/app_drawer.dart';
import '../../../../../core/app_router/app_router.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../theme/custom_icons_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (context, tabsRouter) {
        String str = '';
        switch (tabsRouter.activeIndex) {
          case 0:
            str = S.of(context).home;
            break;
          case 1:
            str = S.of(context).your_courses;
            break;
          case 2:
            str = S.of(context).messages;
            break;
          case 3:
            str = S.of(context).offer;
            break;
        }
        return AppBar(
          elevation: 0,
          title: Text(
            str,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        );
      },
      drawer: const AppDrawer(),
      backgroundColor: Theme.of(context).colorScheme.primary,
      routes: [
        const HomePageRouter(),
        const DrivingCoursesPageRouter(),
        MessagesRouter(),
        const SchoolOfferPageRouter(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          backgroundColor: Theme.of(context).colorScheme.onPrimary,
          unselectedItemColor: Theme.of(context).colorScheme.onPrimary,
          selectedItemColor: Theme.of(context).colorScheme.secondary,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          elevation: 3,
          iconSize: 25,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: S.of(context).home,
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            BottomNavigationBarItem(
              icon: const Icon(CustomIcons.car_side),
              label: S.of(context).lessons,
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.chat),
              label: S.of(context).messages,
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.shop),
              label: S.of(context).offer,
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
          ],
        );
      },
    );
  }
}
