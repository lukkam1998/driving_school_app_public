import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:managing_driving_school_app/core/app_router/app_router.dart';
import '../../../../../core/services/user_data_service/user_data_service_cubit/user_data_service_cubit.dart';
import 'lesson_modified_case_widget.dart';
import 'text_with_icon.dart';
import 'tutor_planned_lesson_options_widget.dart';
import '../../../../../core/app_models/lessons/user_lesson.dart';
import '../../../../../core/providers/driving_lessons_provider/driving_lessons_bloc/driving_lessons_bloc.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../injection_container.dart';
import '../plan_lesson_cubit/plan_lesson_cubit.dart';

class LessonStatusCard extends StatelessWidget {
  const LessonStatusCard({
    Key? key,
    required this.lesson,
  }) : super(key: key);

  final UserLesson lesson;

  @override
  Widget build(BuildContext context) {
    final strings = S.of(context);
    final startHour = DateFormat('HH:mm').format(lesson.startOfLesson);
    final endHour = DateFormat('HH:mm').format(lesson.endOfLesson);
    return BlocProvider(
      create: (context) => sl<PlanLessonCubit>(),
      child: BlocConsumer<PlanLessonCubit, PlanLessonState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (isLoading) {
              context.read<DrivingLessonsBloc>().add(
                    const LoadUserLessonsDataEvent(),
                  );
            },
          );
        },
        builder: (context, state) {
          return BlocBuilder<UserDataServiceCubit, UserDataServiceState>(
            builder: (context, state) {
              if (state.isLoading || state.userData == null) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              final userRole = state.userData!.userRole;
              final isUserTutor = userRole == 'tutor';

              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 4),
                              TextWithIcon(
                                text:
                                    '${strings.driving_hours}  -  $startHour - $endHour',
                                icon: Icons.timer,
                              ),
                              const SizedBox(height: 4),
                              TextWithIcon(
                                text: lesson.hasTookPlace
                                    ? strings.has_took_place
                                    : strings.hasnt_took_place,
                                icon: lesson.hasTookPlace
                                    ? Icons.check
                                    : Icons.highlight_remove,
                              ),
                              const SizedBox(height: 4),
                              TextWithIcon(
                                text: lesson.isApproved
                                    ? strings.confirmed_by_instr
                                    : strings
                                        .wait_for_confirmation_from_instructor,
                                icon: lesson.isApproved
                                    ? Icons.check
                                    : Icons.highlight_remove,
                              ),
                              lesson.isModified
                                  ? LessonModifiedCaseWidget(lesson: lesson)
                                  : const SizedBox(),
                              !lesson.hasTookPlace &&
                                      !lesson.isApproved &&
                                      !lesson.isModified
                                  ? Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        isUserTutor
                                            ? TutorPlannedLessonOptionsWidget(
                                                lesson: lesson,
                                              )
                                            : TextButton(
                                                onPressed: () {
                                                  context
                                                      .read<PlanLessonCubit>()
                                                      .cancelLesson(
                                                        lesson.lessonId!,
                                                      );
                                                },
                                                child: Text(
                                                  S.of(context).cancel_lesson,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headlineSmall
                                                      ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                ),
                                              ),
                                      ],
                                    )
                                  : const SizedBox(),
                              lesson.rideMarkes!.isNotEmpty
                                  ? Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Material(
                                          color: Colors.transparent,
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              foregroundColor: Theme.of(context)
                                                  .colorScheme
                                                  .secondary
                                                  .withOpacity(0.6),
                                            ),
                                            onPressed: () {
                                              context.router.push(
                                                DriveLessonMapRouter(
                                                  userLesson: lesson,
                                                ),
                                              );
                                            },
                                            child: Text(
                                              S.of(context).check_the_ride,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  : const SizedBox(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
