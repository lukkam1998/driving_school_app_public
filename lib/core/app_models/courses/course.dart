import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class Course with _$Course {
  const factory Course({
    required String? id,
    required String duration,
    required String minAge,
    required String category,
    required String price,
    required bool isAvailable,
  }) = _Course;

  factory Course.fromJson(Map<String, Object?> json) => _$CourseFromJson(json);
}
