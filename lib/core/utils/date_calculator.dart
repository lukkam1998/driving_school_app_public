import 'package:table_calendar/table_calendar.dart';

class DateCalculator {
  static bool checkIfDatesAreTheSameDay(
    DateTime firstDate,
    DateTime secondDate,
  ) {
    return isSameDay(firstDate, secondDate);
  }

  static bool checkIfDayIsBeforeToday(
    DateTime date,
  ) {
    DateTime today = DateTime.now();
    return DateTime(
          date.year,
          date.month,
          date.day,
        )
            .difference(
              DateTime(
                today.year,
                today.month,
                today.day,
              ),
            )
            .inDays <=
        0;
  }
}
