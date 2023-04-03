import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/app_router/app_router.dart';

import '../../../../../common/widgets/page_template/page_template.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../injection_container.dart';
import '../manage_courses_blc/manage_courses_bloc.dart';

class OngoingCoursesPage extends StatefulWidget {
  const OngoingCoursesPage({super.key});

  @override
  State<OngoingCoursesPage> createState() => _OngoingCoursesPageState();
}

class _OngoingCoursesPageState extends State<OngoingCoursesPage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocProvider(
      create: (context) =>
          sl<ManageCoursesBloc>()..add(const LoadCoursesEvent()),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            S.of(context).your_courses,
            style: textTheme.labelMedium,
          ),
        ),
        body: PageTemplate(
          body: BlocBuilder<ManageCoursesBloc, ManageCoursesState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView.builder(
                itemBuilder: (context, index) {
                  final course = state.courses[index];
                  return Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                                '${S.of(context).category} ${course.category}'),
                            const Spacer(),
                            TextButton(
                              onPressed: () {
                                context.router
                                    .push(ModifyCourseRouter(course: course))
                                    .then((value) {
                                  if (value is bool) {
                                    if (value) {
                                      context
                                          .read<ManageCoursesBloc>()
                                          .add(const LoadCoursesEvent());
                                    }
                                  }
                                });
                              },
                              child: Text(
                                S.of(context).modify,
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            )
                          ],
                        ),
                        Text(
                          course.isAvailable
                              ? S.of(context).course_is_available
                              : S.of(context).course_is_not_available,
                          style: course.isAvailable
                              ? Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(color: Colors.green)
                              : Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(color: Colors.red),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: state.courses.length,
              );
            },
          ),
        ),
      ),
    );
  }
}
