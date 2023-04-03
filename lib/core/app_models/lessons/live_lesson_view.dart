import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_lesson_view.g.dart';
part 'live_lesson_view.freezed.dart';

@freezed
class LiveLessonView with _$LiveLessonView {
  factory LiveLessonView({
    required String tutorName,
    required String tutorSurname,
    required String userName,
    required String userSurname,
    required double latitude,
    required double longitude,
    required String courseName,
  }) = _LiveLessonView;

  factory LiveLessonView.fromJson(Map<String, Object?> json) =>
      _$LiveLessonViewFromJson(json);
}
