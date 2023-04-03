import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../common/widgets/page_template/page_template.dart';
import '../../../../../common/widgets/previews/course_preview_shimmer.dart';
import '../../../../../core/providers/driving_lessons_provider/driving_lessons_bloc/driving_lessons_bloc.dart';
import '../../../../../common/widgets/previews/course_preview.dart';

class DrivingCoursesPage extends StatefulWidget {
  const DrivingCoursesPage({super.key});

  @override
  State<DrivingCoursesPage> createState() => _DrivingCoursesPageState();
}

class _DrivingCoursesPageState extends State<DrivingCoursesPage> {
  @override
  void initState() {
    super.initState();
    context.read<DrivingLessonsBloc>().add(const LoadUserLessonsDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context
            .read<DrivingLessonsBloc>()
            .add(const LoadUserLessonsDataEvent());
      },
      child: PageTemplate(
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
                : Column(
                    children: [
                      Expanded(
                        child: ListView.separated(
                          padding: const EdgeInsets.only(top: 12),
                          itemBuilder: (context, index) {
                            return _createCoursePreviewWidget(state, index);
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(height: 8);
                          },
                          itemCount: state.userCourses.length,
                        ),
                      ),
                    ],
                  );
          },
        ),
      ),
    );
  }

  CoursePreview _createCoursePreviewWidget(
      DrivingLessonsState state, int index) {
    final userCourse = state.userCourses[index].userCourse;
    final hoursLeft = userCourse.hoursTotal - userCourse.hoursLeft!;
    final listOfLessons = state.userLessons
        .where((element) => element.userCourseId == userCourse.userCourseId)
        .toList();
    listOfLessons.sort(
      ((a, b) {
        int aDate = a.dayOfLesson.microsecondsSinceEpoch;
        int bDate = b.dayOfLesson.microsecondsSinceEpoch;
        return aDate.compareTo(bDate);
      }),
    );

    final closestLessonsList = listOfLessons.where(
      (element) {
        return element.dayOfLesson.isAfter(
          DateTime.now().subtract(
            const Duration(days: 1),
          ),
        );
      },
    ).toList();

    final closestLesson =
        closestLessonsList.isEmpty ? null : closestLessonsList.first;

    return CoursePreview(
      hoursLeft: hoursLeft,
      closestLesson: closestLesson,
      userCourseData: state.userCourses[index],
    );
  }
}
