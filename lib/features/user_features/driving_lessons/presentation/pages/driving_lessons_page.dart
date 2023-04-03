// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:managing_driving_school_app/core/app_models/lessons/user_course_data.dart';
import 'package:managing_driving_school_app/core/app_models/lessons/user_lesson.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../../common/widgets/page_template/page_template.dart';
import '../../../../../core/providers/driving_lessons_provider/driving_lessons_bloc/driving_lessons_bloc.dart';
import '../../../../../generated/l10n.dart';
import '../widgets/calendar_event_builder.dart';
import '../widgets/lessons_main_body_widget.dart';

final DateFormat formatter = DateFormat('dd.MM.yyyy');

class DrivingLessonsPage extends StatefulWidget {
  final UserCourseData userCourseData;
  const DrivingLessonsPage({
    required this.userCourseData,
    Key? key,
  }) : super(key: key);

  @override
  State<DrivingLessonsPage> createState() => _DrivingLessonsPageState();
}

class _DrivingLessonsPageState extends State<DrivingLessonsPage> {
  final ValueNotifier<DateTime> _calendarListenableValue =
      ValueNotifier(DateTime.now());

  @override
  Widget build(BuildContext context) {
    final strings = S.of(context);
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return BlocBuilder<DrivingLessonsBloc, DrivingLessonsState>(
      builder: (context, state) {
        final userLessons = state.userLessons.where((element) {
          return _filterLessonsFromCourse(element);
        }).toList();

        return Scaffold(
          backgroundColor: colorScheme.primary,
          appBar: AppBar(
            elevation: 0,
            title: Text(
              '${strings.categorie} ${widget.userCourseData.course.category}',
            ),
          ),
          body: PageTemplate(
            body: state.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Column(
                    children: [
                      ValueListenableBuilder(
                        valueListenable: _calendarListenableValue,
                        builder: (context, value, child) => TableCalendar(
                          headerStyle: HeaderStyle(
                            titleCentered: true,
                            formatButtonDecoration: BoxDecoration(
                              color: colorScheme.secondary,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            formatButtonTextStyle:
                                TextStyle(color: colorScheme.onPrimary),
                            formatButtonShowsNext: false,
                          ),
                          calendarStyle: CalendarStyle(
                            todayDecoration: BoxDecoration(
                              color: colorScheme.secondary.withOpacity(0.7),
                              shape: BoxShape.circle,
                            ),
                            selectedDecoration: BoxDecoration(
                              color: colorScheme.secondary,
                              shape: BoxShape.circle,
                            ),
                            todayTextStyle: const TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                          firstDay: DateTime.now()
                              .subtract(const Duration(days: 1000)),
                          focusedDay: _calendarListenableValue.value,
                          calendarBuilders: _buildCalendarData(
                              userLessons, state, colorScheme),
                          lastDay:
                              DateTime.now().add(const Duration(days: 1000)),
                          startingDayOfWeek: StartingDayOfWeek.monday,
                          availableGestures: AvailableGestures.horizontalSwipe,
                          selectedDayPredicate: (day) {
                            return isSameDay(
                              _calendarListenableValue.value,
                              day,
                            );
                          },
                          onDaySelected: (selectedDay, focusedDay) {
                            _calendarListenableValue.value = selectedDay;
                            _calendarListenableValue.value =
                                focusedDay; // update `_focusedDay` here as well
                          },
                        ),
                      ),
                      const SizedBox(height: 8),
                      Expanded(
                        child: Column(
                          children: [
                            ValueListenableBuilder(
                              valueListenable: _calendarListenableValue,
                              builder: (context, value, child) =>
                                  LessonsMainBodyWidget(
                                userLessons: userLessons,
                                selectedCourse: widget.userCourseData,
                                textTheme: textTheme,
                                selectedDate: value,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
          ),
        );
      },
    );
  }

  bool _filterLessonsFromCourse(UserLesson element) {
    return element.userCourseId ==
        widget.userCourseData.userCourse.userCourseId;
  }

  CalendarBuilders<Object?> _buildCalendarData(
    List<UserLesson> filteredLessons,
    DrivingLessonsState state,
    ColorScheme colorScheme,
  ) {
    return CalendarBuilders(
      selectedBuilder: (context, day, focusedDay) {
        return null;
      },
      markerBuilder: (context, day, event) {
        for (int i = 0; i < filteredLessons.length; i++) {
          if (filteredLessons[i].dayOfLesson.isAfter(
                    DateTime.now().subtract(const Duration(days: 1)),
                  ) &&
              isSameDay(
                day,
                filteredLessons[i].dayOfLesson,
              )) {
            return CalendarEventBuilder(
              isBeforeToday: false,
              userLesson: filteredLessons[i],
            );
          }

          if (filteredLessons[i].dayOfLesson.isBefore(
                    DateTime.now().subtract(const Duration(days: 1)),
                  ) &&
              isSameDay(
                day,
                filteredLessons[i].dayOfLesson,
              )) {
            return CalendarEventBuilder(
              isBeforeToday: true,
              userLesson: filteredLessons[i],
            );
          }
        }
        return null;
      },
    );
  }
}
