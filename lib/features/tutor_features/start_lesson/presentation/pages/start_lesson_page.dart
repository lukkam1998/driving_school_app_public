import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:managing_driving_school_app/common/snackbar/app_snackbar.dart';
import '../../../../../core/app_models/lessons/user_course_data.dart';
import '../../../../../core/app_models/lessons/user_lesson.dart';
import '../../../../core_features/login/presentation/widgets/app_button.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../../generated/l10n.dart';
import '../../../../../injection_container.dart';
import '../start_lesson_bloc/start_lesson_bloc.dart';
import '../widgets/lesson_state_widget.dart';
import '../widgets/start_lesson_info_no_lesson_case.dart';
import '../widgets/start_lesson_info_planned_lesson_case.dart';
import '../widgets/start_lesson_top_widget.dart';
import '../widgets/start_lesson_trainee_data_widget.dart';

class StartLessonPage extends StatefulWidget {
  final UserLesson? closestLesson;
  final UserCourseData userCourseData;

  const StartLessonPage({
    required this.closestLesson,
    required this.userCourseData,
    super.key,
  });

  @override
  State<StartLessonPage> createState() => _StartLessonPageState();
}

class _StartLessonPageState extends State<StartLessonPage> {
  @override
  Widget build(BuildContext context) {
    final userData = widget.userCourseData.userData;

    return BlocProvider(
      create: (context) => sl<StartLessonBloc>(),
      child: WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlocConsumer<StartLessonBloc, StartLessonState>(
                listener: (context, state) {
                  print(state);
                  if (state.hasError) {
                    AppSnackbar.showSnackbar(context, state.errorMessage);
                  }
                },
                builder: (context, state) {
                  // Setup bool variables
                  final bool isLessonGoing = (state.didStart && !state.didEnd);
                  final bool didLessonEnd = (state.didStart && state.didEnd);
                  bool? hasLessonTookPlace = widget.closestLesson?.hasTookPlace;
                  bool? isApproved = widget.closestLesson?.isApproved;
                  hasLessonTookPlace ??= false;
                  isApproved ??= false;
                  bool isAnyApprovedLessonPlannedToday = false;

                  if (widget.closestLesson == null) {
                    isAnyApprovedLessonPlannedToday = true;
                  } else {
                    isAnyApprovedLessonPlannedToday =
                        !widget.closestLesson!.isApproved &&
                            !hasLessonTookPlace &&
                            !isSameDay(
                              DateTime.now(),
                              widget.closestLesson?.dayOfLesson,
                            );
                  }

                  return Column(
                    children: [
                      const SizedBox(height: 16),
                      StartLessonTopWidget(
                        isLessonGoing: isLessonGoing,
                        hasLessonTookPlace: hasLessonTookPlace,
                        didLessonEnd: didLessonEnd,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: StartLessonTraineeDataWidget(
                          userData: userData,
                          heroTag:
                              'startLesson${widget.userCourseData.userCourse.userCourseId}',
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: LessonStateWidget(
                            isLessonGoing: isLessonGoing,
                            didLessonStart: state.didStart,
                            didLessonEnd: state.didEnd,
                            endDate: state.endDate,
                            startDate: state.startDate,
                          ),
                        ),
                      ),
                      (isLessonGoing || didLessonEnd)
                          ? const SizedBox()
                          : isAnyApprovedLessonPlannedToday
                              ? StartLessonInfoNoLessonCase(
                                  userCourseData: widget.userCourseData,
                                  userData: userData,
                                )
                              : StartLessonInfoLessonPlannedCase(
                                  lesson: widget.closestLesson!,
                                ),
                      isAnyApprovedLessonPlannedToday
                          ? const SizedBox()
                          : const Spacer(),
                      isAnyApprovedLessonPlannedToday &&
                              (!isLessonGoing || !didLessonEnd)
                          ? const SizedBox()
                          : BlocBuilder<StartLessonBloc, StartLessonState>(
                              builder: (context, state) {
                                return state.didEnd
                                    ? const SizedBox()
                                    : AppButton(
                                        isLoading: state.isLoading,
                                        buttonText: state.didStart
                                            ? S.of(context).end_lesson
                                            : S.of(context).start_lesson,
                                        onPressed: () {
                                          if (state.didStart) {
                                            context.read<StartLessonBloc>().add(
                                                  EndLessonEvent(
                                                    lessonId: widget
                                                        .closestLesson!
                                                        .lessonId!,
                                                    userCourseData:
                                                        widget.userCourseData,
                                                  ),
                                                );
                                          } else {
                                            context.read<StartLessonBloc>().add(
                                                  BeginLessonEvent(
                                                    lessonId: widget
                                                        .closestLesson!
                                                        .lessonId,
                                                    userCourseData:
                                                        widget.userCourseData,
                                                  ),
                                                );
                                          }
                                        },
                                      );
                              },
                            ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
