import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:managing_driving_school_app/features/user_features/school_offer/presentation/school_offer_bloc/school_offer_bloc.dart';
import '../../../../../common/snackbar/app_snackbar.dart';
import '../../../../../core/app_models/courses/course.dart';
import '../../../../../core/app_models/courses/user_course.dart';
import '../../../../../generated/l10n.dart';
import '../school_enroll_course_cubit/school_enroll_course_cubit.dart';
import 'buy_more_hours_dialog.dart';

class CourseStatusWidget extends StatelessWidget {
  const CourseStatusWidget({
    super.key,
    required this.course,
    required this.statusColor,
    required this.userCourse,
    required this.courseStatus,
  });

  final String courseStatus;
  final Course course;
  final MaterialColor statusColor;
  final UserCourse userCourse;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${S.of(context).categorie} ${course.category}',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            fontSize: 22,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Flexible(
                      child: AutoSizeText(
                        'Status: $courseStatus',
                        minFontSize: 10,
                        maxFontSize: 16,
                        style: TextStyle(
                          color: statusColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                  ],
                ),
              ),
              userCourse.isApproved
                  ? BlocConsumer<SchoolEnrollCourseCubit,
                      SchoolEnrollCourseState>(
                      listener: (context, state) {
                        state.whenOrNull(
                          success: (isLoading) {
                            context
                                .read<SchoolOfferBloc>()
                                .add(const LoadUserCoursesEvent());
                          },
                        );
                      },
                      builder: (context, state) {
                        return state.isLoading
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : userCourse.boughtHours == 15
                                ? const SizedBox()
                                : TextButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          final coursePrice =
                                              double.parse(course.price);
                                          final courseDuration =
                                              double.parse(course.duration);
                                          final courseHourPrice =
                                              coursePrice / courseDuration;
                                          final courseIntPrice =
                                              courseHourPrice.toInt();

                                          return BuyMoreHoursDialog(
                                            userCourse: userCourse,
                                            hourPrice: courseIntPrice,
                                          );
                                        },
                                      ).then((value) {
                                        if (value == null) {
                                          return;
                                        }
                                        AppSnackbar.showSnackbar(
                                          context,
                                          S
                                              .of(context)
                                              .hours_bought_succesfully,
                                        );

                                        context.router.pop();
                                      });
                                    },
                                    child: Text(
                                      S.of(context).buy_more_hours,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.w700,
                                          ),
                                    ),
                                  );
                      },
                    )
                  : BlocConsumer<SchoolEnrollCourseCubit,
                      SchoolEnrollCourseState>(
                      listener: (context, state) {
                        state.whenOrNull(
                          success: (isLoading) {
                            context
                                .read<SchoolOfferBloc>()
                                .add(const LoadUserCoursesEvent());
                          },
                        );
                      },
                      builder: (context, state) {
                        return state.isLoading
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                                onPressed: () {
                                  context
                                      .read<SchoolEnrollCourseCubit>()
                                      .dropOutOfCourse(userCourse);
                                },
                                child: Text(
                                  S.of(context).resign,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium,
                                ),
                              );
                      },
                    ),
            ],
          ),
        ),
        const Divider(thickness: 2),
      ],
    );
  }
}
