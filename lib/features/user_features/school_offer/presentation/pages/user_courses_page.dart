import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:managing_driving_school_app/features/user_features/school_offer/presentation/school_enroll_course_cubit/school_enroll_course_cubit.dart';
import '../../../../../common/widgets/page_template/page_template.dart';
import '../school_offer_bloc/school_offer_bloc.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../injection_container.dart';
import '../widgets/course_status_widget.dart';

class UserCoursesPage extends StatefulWidget {
  const UserCoursesPage({super.key});

  @override
  State<UserCoursesPage> createState() => _UserCoursesPageState();
}

class _UserCoursesPageState extends State<UserCoursesPage> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              sl<SchoolOfferBloc>()..add(const LoadUserCoursesEvent()),
        ),
        BlocProvider(
          create: (context) => sl<SchoolEnrollCourseCubit>(),
        ),
      ],
      child: Scaffold(
        backgroundColor: colorScheme.primary,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            S.of(context).your_courses,
            style: textTheme.labelMedium,
          ),
        ),
        body: BlocBuilder<SchoolOfferBloc, SchoolOfferState>(
          builder: (context, state) {
            return PageTemplate(
              body: state.hasError
                  ? Center(
                      child: Text(S.of(context).sorry_error_occured),
                    )
                  : state.isFetching
                      ? Center(
                          child: CircularProgressIndicator(
                            backgroundColor: colorScheme.secondary,
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: state.userCourse.isEmpty
                              ? Center(
                                  child: Text(
                                    S.of(context).didnt_enroll_yet,
                                    style: textTheme.labelSmall,
                                  ),
                                )
                              : ListView.builder(
                                  itemCount: state.userCourse.length,
                                  itemBuilder: (context, index) {
                                    final course =
                                        state.userCourse[index].value2;
                                    final userCourse =
                                        state.userCourse[index].value1;
                                    final courseStatus = userCourse.isApproved
                                        ? S.of(context).confirmed_go_to_lessons
                                        : S.of(context).wait_for_confirmation;
                                    final statusColor = userCourse.isApproved
                                        ? Colors.green
                                        : Colors.red;
                                        
                                    return CourseStatusWidget(
                                      course: course,
                                      statusColor: statusColor,
                                      userCourse: userCourse,
                                      courseStatus: courseStatus,
                                    );
                                  },
                                ),
                        ),
            );
          },
        ),
      ),
    );
  }
}
