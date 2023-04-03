import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/app_models/lessons/user_lesson.dart';
import '../../../../../common/snackbar/app_snackbar.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../injection_container.dart';
import '../../../../core_features/login/presentation/widgets/app_button.dart';
import '../plan_lesson_cubit/plan_lesson_cubit.dart';
import 'choose_hour_widget.dart';

class ModifyLessonDialog extends StatelessWidget {
  const ModifyLessonDialog({
    Key? key,
    required this.startHourNotifier,
    required this.endHourNotifier,
    required this.lesson,
  }) : super(key: key);

  final ValueNotifier<int> startHourNotifier;
  final ValueNotifier<int> endHourNotifier;
  final UserLesson lesson;

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
                strings.modify_lesson,
                style: textTheme.headlineMedium?.copyWith(fontSize: 20),
              ),
              const SizedBox(height: 8),
              // RichText(
              //   text: TextSpan(
              //     text: '${strings.plan_lesson_on} ',
              //     style: textTheme.headlineSmall,
              //     children: [
              //       TextSpan(
              //         text: ' ${formatter.format(selectedDate)} ',
              //         style: textTheme.headlineSmall?.copyWith(
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // const SizedBox(height: 16),
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
                              S.of(context).lessons_added_successfully,
                            );
                            Navigator.of(context).pop(true);
                          },
                          failure: (isLoading) {
                            AppSnackbar.showSnackbar(
                              context,
                              S.of(context).adding_lesson_failed,
                            );
                          },
                        );
                      },
                      builder: (context, state) {
                        return AppButton(
                          buttonText: strings.confirm,
                          isLoading: state.isLoading,
                          onPressed: () {
                            context.read<PlanLessonCubit>().modifyLesson(
                                  startHourNotifier.value.toString(),
                                  endHourNotifier.value.toString(),
                                  lesson,
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
