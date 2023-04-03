import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/app_models/lessons/user_lesson.dart';
import '../../../../../core/providers/driving_lessons_provider/driving_lessons_bloc/driving_lessons_bloc.dart';
import '../../../../../core/utils/date_calculator.dart';
import 'lesson_status_card.dart';
import 'plan_lesson_dialog.dart';

import '../../../../../core/app_models/lessons/user_course_data.dart';
import '../../../../../generated/l10n.dart';
import 'plan_lesson_text_button.dart';

class LessonsMainBodyWidget extends StatelessWidget {
  const LessonsMainBodyWidget({
    Key? key,
    required this.textTheme,
    required this.selectedDate,
    required this.selectedCourse,
    required this.userLessons,
  }) : super(key: key);

  final TextTheme textTheme;
  final UserCourseData selectedCourse;
  final DateTime selectedDate;
  final List<UserLesson> userLessons;

  @override
  Widget build(BuildContext context) {
    final doesCourseEnded = selectedCourse.userCourse.doesCourseEnd ?? false;
    final strings = S.of(context);
    final isSelectedDateBeforeToday =
        DateCalculator.checkIfDayIsBeforeToday(selectedDate);

    return Expanded(
      child: BlocConsumer<DrivingLessonsBloc, DrivingLessonsState>(
        listener: (context, state) {},
        builder: (context, state) {
          final listOfLessons = userLessons.where((element) {
            return DateCalculator.checkIfDatesAreTheSameDay(
              element.dayOfLesson,
              selectedDate,
            );
          }).toList();

          if (state.hasError) {
            return Center(
              child: Text(
                strings.couldnt_load_lessons,
                style: textTheme.headlineSmall,
              ),
            );
          } else {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              if (listOfLessons.isEmpty) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Card(
                        color: Theme.of(context).colorScheme.onBackground,
                        elevation: 3,
                        child: SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              isSelectedDateBeforeToday
                                  ? strings.didnt_have_lessons_this_day
                                  : strings.dont_have_lessons_this_day,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: isSelectedDateBeforeToday
                            ? const SizedBox()
                            : doesCourseEnded
                                ? const SizedBox()
                                : PlanLessonTextButton(
                                    onPressed: () {
                                      _showPlanLessonDialog(
                                        context,
                                        selectedDate,
                                        selectedCourse,
                                      ).then(
                                        (value) => {
                                          if (value == true)
                                            {
                                              context
                                                  .read<DrivingLessonsBloc>()
                                                  .add(
                                                    const LoadUserLessonsDataEvent(),
                                                  )
                                            }
                                        },
                                      );
                                    },
                                  ),
                      ),
                    )
                  ],
                );
              } else {
                return ListView.builder(
                  itemCount: listOfLessons.length + 1,
                  itemBuilder: (context, index) {
                    if (index == listOfLessons.length) {
                      return isSelectedDateBeforeToday ||
                              DateCalculator.checkIfDatesAreTheSameDay(
                                selectedDate,
                                listOfLessons[index - 1].dayOfLesson,
                              )
                          ? const SizedBox()
                          : doesCourseEnded
                              ? const SizedBox()
                              : Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 0, 16, 16),
                                  child: PlanLessonTextButton(
                                    onPressed: () {
                                      _showPlanLessonDialog(
                                        context,
                                        selectedDate,
                                        selectedCourse,
                                      ).then(
                                        (value) => {
                                          if (value == true)
                                            {
                                              context
                                                  .read<DrivingLessonsBloc>()
                                                  .add(
                                                    const LoadUserLessonsDataEvent(),
                                                  )
                                            }
                                        },
                                      );
                                    },
                                  ),
                                );
                    }
                    final lesson = listOfLessons[index];
                    return LessonStatusCard(lesson: lesson);
                  },
                );
              }
            }
          }
        },
      ),
    );
  }

  Future<dynamic> _showPlanLessonDialog(
    BuildContext context,
    DateTime selectedDate,
    UserCourseData userCourseData,
  ) {
    return showDialog(
      context: context,
      builder: (context) {
        ValueNotifier<int> startHourNotifier = ValueNotifier(12);
        ValueNotifier<int> endHourNotifier = ValueNotifier(15);
        return PlanLessonDialog(
          courseData: userCourseData,
          startHourNotifier: startHourNotifier,
          endHourNotifier: endHourNotifier,
          selectedDate: selectedDate,
        );
      },
    );
  }
}
