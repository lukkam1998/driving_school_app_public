import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../common/widgets/drawer/tutor_drawer.dart';
import '../../../../../common/widgets/page_template/tutor_page_template.dart';
import '../../../../../common/widgets/previews/course_preview.dart';
import '../../../../../common/widgets/previews/course_preview_shimmer.dart';
import '../../../../../core/providers/driving_lessons_provider/driving_lessons_bloc/driving_lessons_bloc.dart';
import '../../../../../generated/l10n.dart';
import 'package:managing_driving_school_app/core/app_models/lessons/user_lesson.dart';

class TutorHomePage extends StatefulWidget {
  const TutorHomePage({super.key});

  @override
  State<TutorHomePage> createState() => _TutorHomePageState();
}

class _TutorHomePageState extends State<TutorHomePage> {
  @override
  void initState() {
    super.initState();
    context.read<DrivingLessonsBloc>().add(const LoadUserLessonsDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
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
        child: TutorPageTemplate(
          body: BlocBuilder<DrivingLessonsBloc, DrivingLessonsState>(
            builder: (context, state) {
              return state.isLoading
                  ? SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(height: 12),
                          const CoursePreviewShimmer(),
                          const CoursePreviewShimmer(),
                          const CoursePreviewShimmer(),
                        ],
                      ),
                    )
                  : state.userCourses.isEmpty
                      ? Center(
                          child: Text(S.of(context).dont_run_any_courses),
                        )
                      : Column(
                          children: [
                            Expanded(
                              child: ListView.separated(
                                itemBuilder: (context, index) {
                                  return _buildUserCoursePreview(state, index);
                                },
                                separatorBuilder: (context, index) {
                                  return const SizedBox(height: 8);
                                },
                                padding: const EdgeInsets.only(top: 12),
                                itemCount: state.userCourses.length,
                              ),
                            ),
                          ],
                        );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildUserCoursePreview(DrivingLessonsState state, int index) {
    final userCourse = state.userCourses[index].userCourse;
    final hoursLeft = userCourse.hoursTotal - userCourse.hoursLeft!;
    final listOfLessons = state.userLessons
        .where((element) => element.userCourseId == userCourse.userCourseId)
        .toList();

    listOfLessons.sort(
      ((a, b) {
        return _sortByDate(a, b);
      }),
    );

    final closestLessonsList = listOfLessons.where(
      (element) {
        return _filterNotDoneLessons(element);
      },
    ).toList();

    final closestLesson =
        closestLessonsList.isEmpty ? null : closestLessonsList.first;

    return CoursePreview(
      hoursLeft: hoursLeft,
      closestLesson: closestLesson,
      userCourseData: state.userCourses[index],
      isUserTutor: true,
    );
  }

  bool _filterNotDoneLessons(UserLesson element) {
    return element.dayOfLesson.isAfter(
          DateTime.now().subtract(
            const Duration(days: 1),
          ),
        ) &&
        !element.hasTookPlace;
  }

  int _sortByDate(UserLesson a, UserLesson b) {
    int aDate = a.dayOfLesson.microsecondsSinceEpoch;
    int bDate = b.dayOfLesson.microsecondsSinceEpoch;
    return aDate.compareTo(bDate);
  }
}
