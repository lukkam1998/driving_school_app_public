import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/page_template/page_template.dart';
import '../../../../../core/app_router/app_router.dart';
import '../../../../../generated/l10n.dart';
import '../widgets/go_to_button.dart';

class SchoolOfferPage extends StatefulWidget {
  const SchoolOfferPage({Key? key}) : super(key: key);

  @override
  State<SchoolOfferPage> createState() => _SchoolOfferPageState();
}

class _SchoolOfferPageState extends State<SchoolOfferPage> {
  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                children: [
                  GoToButton(
                    margin: const EdgeInsets.only(top: 24),
                    showDivider: true,
                    title: S.of(context).enroll_course,
                    onPressed: () {
                      context.router.navigate(
                        const SchoolCourseRouter(),
                      );
                    },
                  ),
                  GoToButton(
                    margin: const EdgeInsets.only(top: 12),
                    showDivider: true,
                    title: S.of(context).your_courses,
                    onPressed: () {
                      context.router.navigate(
                        const UserCoursesRouter(),
                      ).then((value) => null);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
