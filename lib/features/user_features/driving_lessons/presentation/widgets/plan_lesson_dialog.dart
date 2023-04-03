import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../common/snackbar/app_snackbar.dart';
import '../../../../../core/app_models/lessons/user_course_data.dart';

import '../../../../../generated/l10n.dart';
import '../../../../../injection_container.dart';
import '../../../../core_features/login/presentation/widgets/app_button.dart';
import '../pages/driving_lessons_page.dart';
import '../plan_lesson_cubit/plan_lesson_cubit.dart';
import 'choose_hour_widget.dart';

class PlanLessonDialog extends StatelessWidget {
  const PlanLessonDialog({
    Key? key,
    required this.startHourNotifier,
    required this.endHourNotifier,
    required this.selectedDate,
    required this.courseData,
  }) : super(key: key);

  final ValueNotifier<int> startHourNotifier;
  final ValueNotifier<int> endHourNotifier;
  final DateTime selectedDate;
  final UserCourseData courseData;

  @override
  Widget build(BuildContext context) {
    final strings = S.of(context);
    final textTheme = Theme.of(context).textTheme;

    return BlocProvider(
      create: (context) => sl<PlanLessonCubit>(),
      child: Center(
        child: Container(
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16,
            ),
            color: Theme.of(context).colorScheme.primary,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${strings.categorie} ${courseData.course.category}',
                style: textTheme.headlineMedium?.copyWith(fontSize: 20),
              ),
              const SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  text: '${strings.plan_lesson_on} ',
                  style: textTheme.headlineSmall,
                  children: [
                    TextSpan(
                      text: ' ${formatter.format(selectedDate)} ',
                      style: textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ChooseHoursWidget(
                      title: strings.choose_start_hour,
                      valueNotifier: startHourNotifier,
                      decrementFunction: () {
                        if (startHourNotifier.value > 7) {
                          startHourNotifier.value--;
                        }
                      },
                      incrementFunction: () {
                        if (startHourNotifier.value < 18 &&
                            startHourNotifier.value <
                                endHourNotifier.value - 1) {
                          startHourNotifier.value++;
                        }
                      },
                    ),
                    ChooseHoursWidget(
                      title: strings.choose_end_hour,
                      valueNotifier: endHourNotifier,
                      decrementFunction: () {
                        if (endHourNotifier.value > 8 &&
                            endHourNotifier.value >
                                startHourNotifier.value + 1) {
                          endHourNotifier.value--;
                        }
                      },
                      incrementFunction: () {
                        if (endHourNotifier.value < 19) {
                          endHourNotifier.value++;
                        }
                      },
                    ),
                    const SizedBox(height: 16),
                    BlocConsumer<PlanLessonCubit, PlanLessonState>(
                      listener: (context, state) {
                        state.whenOrNull(
                          success: (isLoading) {
                            AppSnackbar.showSnackbar(
                              context,
                              'Successed added lesson',
                            );
                            Navigator.of(context).pop(true);
                          },
                          failure: (isLoading) {
                            AppSnackbar.showSnackbar(
                              context,
                              'Failed to add lesson',
                            );
                          },
                        );
                      },
                      builder: (context, state) {
                        return AppButton(
                          buttonText: strings.confirm,
                          isLoading: state.isLoading,
                          onPressed: () {
                            context.read<PlanLessonCubit>().planLesson(
                                  selectedDate,
                                  courseData.userCourse,
                                  startHourNotifier.value.toString(),
                                  endHourNotifier.value.toString(),
                                );
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
