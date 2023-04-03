import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../common/widgets/drawer/tutor_drawer.dart';

import '../../../../../common/widgets/page_template/tutor_page_template.dart';
import '../widgets/courses_to_take_container.dart';
import '../../../../../generated/l10n.dart';

import '../../../../../injection_container.dart';
import '../tutor_take_courses_bloc/tutor_take_courses_bloc.dart';

class TutorTakeCoursesPage extends StatefulWidget {
  const TutorTakeCoursesPage({super.key});

  @override
  State<TutorTakeCoursesPage> createState() => _TutorTakeCoursesPageState();
}

class _TutorTakeCoursesPageState extends State<TutorTakeCoursesPage> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final strings = S.of(context);
    return BlocProvider(
      create: (context) => sl<TutorTakeCoursesBloc>()
        ..add(
          const LoadUnapprovedCoursesEvent(),
        ),
      child: Scaffold(
        drawer: const TutorDrawer(),
        backgroundColor: colorScheme.primary,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Hello!',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        body: SafeArea(
          child: BlocBuilder<TutorTakeCoursesBloc, TutorTakeCoursesState>(
            builder: (context, state) {
              return TutorPageTemplate(
                body: state.hasError
                    ? Center(
                        child: Text(S.of(context).sorry_error_occured),
                      )
                    : state.isFetching
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : state.coursesToTake.isEmpty
                            ? Center(
                                child: Text(
                                  S.of(context).no_students,
                                ),
                              )
                            : ListView.builder(
                                itemBuilder: (context, index) {
                                  if (index == 0) {
                                    return Column(
                                      children: [
                                        const SizedBox(height: 32),
                                        Text(
                                          strings.choose_student,
                                          style: textTheme.labelMedium
                                              ?.copyWith(fontSize: 22),
                                        ),
                                        const SizedBox(height: 16),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              16, 8, 16, 8),
                                          child: CoursesToTakeContainer(
                                            key: UniqueKey(),
                                            course: state
                                                .coursesToTake[index].value2,
                                            userCourse: state
                                                .coursesToTake[index].value1,
                                            userRestrictedModel: state
                                                .coursesToTake[index].value3,
                                          ),
                                        ),
                                      ],
                                    );
                                  }
                                  return Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(16, 8, 16, 8),
                                    child: CoursesToTakeContainer(
                                      key: UniqueKey(),
                                      course: state.coursesToTake[index].value2,
                                      userCourse:
                                          state.coursesToTake[index].value1,
                                      userRestrictedModel:
                                          state.coursesToTake[index].value3,
                                    ),
                                  );
                                },
                                itemCount: state.coursesToTake.length,
                              ),
              );
            },
          ),
        ),
      ),
    );
  }
}
