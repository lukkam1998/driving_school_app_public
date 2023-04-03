import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/drawer/owner_drawer.dart';
import '../../../../../common/widgets/page_template/page_template.dart';
import '../../../../../core/app_router/app_router.dart';

import '../../../../../generated/l10n.dart';

class UsersInfoPage extends StatefulWidget {
  const UsersInfoPage({super.key});

  @override
  State<UsersInfoPage> createState() => _UsersInfoPageState();
}

class _UsersInfoPageState extends State<UsersInfoPage> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: colorScheme.primary,
      drawer: const OwnerDrawer(),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          S.of(context).users_info,
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
                  context.router.push(
                    ListOfUsersRouter(isInstructorsPreview: false),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        S.of(context).trainees_preview,
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
                  context.router.push(
                    ListOfUsersRouter(isInstructorsPreview: true),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        S.of(context).instructors_preview,
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
                  context.router.push(const CreateInstructorAccountRouter());
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        S.of(context).create_instructor_account,
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
            ],
          ),
        ),
      ),
    );
  }
}
