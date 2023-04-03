import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/app_models/courses/course.dart';
import '../../../../../core/app_models/promotions/promotion.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../injection_container.dart';
import '../school_enroll_course_cubit/school_enroll_course_cubit.dart';
import 'course_alert_dialog.dart';

class CourseInformation extends StatefulWidget {
  final Course course;
  final Promotion? promotion;
  const CourseInformation({
    required this.course,
    this.promotion,
    super.key,
  });

  @override
  State<CourseInformation> createState() => _CourseInformationState();
}

class _CourseInformationState extends State<CourseInformation> {
  ValueNotifier<bool> _isOpened = ValueNotifier(false);
  String stringPrice = '';
  String? promotionValue;

  @override
  void initState() {
    super.initState();
    stringPrice = widget.course.price;
    if (widget.promotion != null) {
      // calc price after promotion
      double doublePrice = double.parse(stringPrice);
      final promoValue = widget.promotion!.promotionValue;
      promotionValue = ((doublePrice * promoValue) / 100).toStringAsFixed(2);
      doublePrice = doublePrice - ((doublePrice * promoValue) / 100);
      stringPrice = doublePrice.toStringAsFixed(2);
    }
  }

  @override
  Widget build(BuildContext context) {
    String categoryString =
        '${S.of(context).categorie} ${widget.course.category}';
    if (widget.promotion != null) {
      categoryString = categoryString + ' - ' + S.of(context).promotion;
    }
    return AnimatedSize(
      duration: const Duration(milliseconds: 200),
      curve: Curves.fastOutSlowIn,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 2 / 3,
                child: AutoSizeText(
                  categoryString,
                  minFontSize: 8,
                  maxFontSize: 24,
                  maxLines: 1,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(fontSize: 24),
                ),
              ),
              ValueListenableBuilder(
                valueListenable: _isOpened,
                builder: (context, value, child) => IconButton(
                  onPressed: () {
                    _isOpened.value = !_isOpened.value;
                  },
                  icon: Icon(
                    _isOpened.value
                        ? Icons.arrow_drop_up_outlined
                        : Icons.arrow_drop_down_circle_outlined,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              )
            ],
          ),
          ValueListenableBuilder(
            valueListenable: _isOpened,
            builder: (context, value, child) => value
                ? Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            '${S.of(context).price} - $stringPrice ZŁ',
                            maxFontSize: 16,
                            maxLines: 1,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(fontSize: 16),
                          ),
                          promotionValue != null
                              ? AutoSizeText(
                                  '${S.of(context).you_save} - $promotionValue ZŁ',
                                  maxFontSize: 16,
                                  maxLines: 1,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium
                                      ?.copyWith(fontSize: 16),
                                )
                              : const SizedBox(),
                          AutoSizeText(
                            '${S.of(context).duration} - ${widget.course.duration}h',
                            maxFontSize: 16,
                            maxLines: 1,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(fontSize: 16),
                          ),
                          AutoSizeText(
                            '${S.of(context).min_age} - ${widget.course.minAge}',
                            maxFontSize: 16,
                            maxLines: 1,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(fontSize: 16),
                          ),
                        ],
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          showEnrollCourseDialog(context);
                        },
                        child: Text(
                          S.of(context).want_to_enroll,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                              ?.copyWith(
                                fontSize: 16,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                      )
                    ],
                  )
                : const SizedBox(),
          ),
        ],
      ),
    );
  }

  Future<dynamic> showEnrollCourseDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return BlocProvider(
          create: (context) => sl<SchoolEnrollCourseCubit>(),
          child: BlocBuilder<SchoolEnrollCourseCubit, SchoolEnrollCourseState>(
            builder: (context, state) {
              return state.when(
                failure: (isLoading, errorMessage) {
                  return CourseAlertDialog(
                    course: widget.course,
                    isLoading: state.isLoading,
                    promotion: widget.promotion,
                    hasError: true,
                    errorMessage: errorMessage,
                  );
                },
                initial: (isLoading) {
                  return CourseAlertDialog(
                    course: widget.course,
                    isLoading: state.isLoading,
                    promotion: widget.promotion,
                  );
                },
                success: (isLoading) {
                  return CourseAlertDialog(
                    course: widget.course,
                    isLoading: state.isLoading,
                    hasSucced: true,
                    promotion: widget.promotion,
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
