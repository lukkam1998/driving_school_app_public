import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/page_template/page_template.dart';

import '../../../../../common/widgets/drawer/owner_drawer.dart';
import '../../../../../core/app_router/app_router.dart';
import '../../../../../generated/l10n.dart';

class ManageCoursesPage extends StatefulWidget {
  const ManageCoursesPage({super.key});

  @override
  State<ManageCoursesPage> createState() => _ManageCoursesPageState();
}

class _ManageCoursesPageState extends State<ManageCoursesPage> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      drawer: const OwnerDrawer(),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          S.of(context).your_courses,
          style: textTheme.labelMedium,
        ),
      ),
      body: PageTemplate(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  context.router.push(const OngoingCoursesRouter());
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        S.of(context).live_courses,
                        style: textTheme.labelMedium,
                      ),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward,
                        color: colorScheme.onPrimary,
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Divider(),
              ),
              GestureDetector(
                onTap: () {
                  context.router.push(const AddCourseRouter());
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        S.of(context).add_course,
                        style: textTheme.labelMedium,
                      ),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward,
                        color: colorScheme.onPrimary,
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Divider(),
              ),
              GestureDetector(
                onTap: () {
                  context.router.push(const PromotionsRouter());
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        S.of(context).promotions,
                        style: textTheme.labelMedium,
                      ),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward,
                        color: colorScheme.onPrimary,
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Divider(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
