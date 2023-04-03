// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseStats _$CourseStatsFromJson(Map<String, dynamic> json) {
  return _CourseStats.fromJson(json);
}

/// @nodoc
mixin _$CourseStats {
  Course get course => throw _privateConstructorUsedError;
  int get peopleWithOngoingCourse => throw _privateConstructorUsedError;
  int get peopleThatEndedCourse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseStatsCopyWith<CourseStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseStatsCopyWith<$Res> {
  factory $CourseStatsCopyWith(
          CourseStats value, $Res Function(CourseStats) then) =
      _$CourseStatsCopyWithImpl<$Res, CourseStats>;
  @useResult
  $Res call(
      {Course course, int peopleWithOngoingCourse, int peopleThatEndedCourse});

  $CourseCopyWith<$Res> get course;
}

/// @nodoc
class _$CourseStatsCopyWithImpl<$Res, $Val extends CourseStats>
    implements $CourseStatsCopyWith<$Res> {
  _$CourseStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
    Object? peopleWithOngoingCourse = null,
    Object? peopleThatEndedCourse = null,
  }) {
    return _then(_value.copyWith(
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
      peopleWithOngoingCourse: null == peopleWithOngoingCourse
          ? _value.peopleWithOngoingCourse
          : peopleWithOngoingCourse // ignore: cast_nullable_to_non_nullable
              as int,
      peopleThatEndedCourse: null == peopleThatEndedCourse
          ? _value.peopleThatEndedCourse
          : peopleThatEndedCourse // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseCopyWith<$Res> get course {
    return $CourseCopyWith<$Res>(_value.course, (value) {
      return _then(_value.copyWith(course: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CourseStatsCopyWith<$Res>
    implements $CourseStatsCopyWith<$Res> {
  factory _$$_CourseStatsCopyWith(
          _$_CourseStats value, $Res Function(_$_CourseStats) then) =
      __$$_CourseStatsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Course course, int peopleWithOngoingCourse, int peopleThatEndedCourse});

  @override
  $CourseCopyWith<$Res> get course;
}

/// @nodoc
class __$$_CourseStatsCopyWithImpl<$Res>
    extends _$CourseStatsCopyWithImpl<$Res, _$_CourseStats>
    implements _$$_CourseStatsCopyWith<$Res> {
  __$$_CourseStatsCopyWithImpl(
      _$_CourseStats _value, $Res Function(_$_CourseStats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
    Object? peopleWithOngoingCourse = null,
    Object? peopleThatEndedCourse = null,
  }) {
    return _then(_$_CourseStats(
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
      peopleWithOngoingCourse: null == peopleWithOngoingCourse
          ? _value.peopleWithOngoingCourse
          : peopleWithOngoingCourse // ignore: cast_nullable_to_non_nullable
              as int,
      peopleThatEndedCourse: null == peopleThatEndedCourse
          ? _value.peopleThatEndedCourse
          : peopleThatEndedCourse // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseStats implements _CourseStats {
  const _$_CourseStats(
      {required this.course,
      required this.peopleWithOngoingCourse,
      required this.peopleThatEndedCourse});

  factory _$_CourseStats.fromJson(Map<String, dynamic> json) =>
      _$$_CourseStatsFromJson(json);

  @override
  final Course course;
  @override
  final int peopleWithOngoingCourse;
  @override
  final int peopleThatEndedCourse;

  @override
  String toString() {
    return 'CourseStats(course: $course, peopleWithOngoingCourse: $peopleWithOngoingCourse, peopleThatEndedCourse: $peopleThatEndedCourse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseStats &&
            (identical(other.course, course) || other.course == course) &&
            (identical(
                    other.peopleWithOngoingCourse, peopleWithOngoingCourse) ||
                other.peopleWithOngoingCourse == peopleWithOngoingCourse) &&
            (identical(other.peopleThatEndedCourse, peopleThatEndedCourse) ||
                other.peopleThatEndedCourse == peopleThatEndedCourse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, course, peopleWithOngoingCourse, peopleThatEndedCourse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseStatsCopyWith<_$_CourseStats> get copyWith =>
      __$$_CourseStatsCopyWithImpl<_$_CourseStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseStatsToJson(
      this,
    );
  }
}

abstract class _CourseStats implements CourseStats {
  const factory _CourseStats(
      {required final Course course,
      required final int peopleWithOngoingCourse,
      required final int peopleThatEndedCourse}) = _$_CourseStats;

  factory _CourseStats.fromJson(Map<String, dynamic> json) =
      _$_CourseStats.fromJson;

  @override
  Course get course;
  @override
  int get peopleWithOngoingCourse;
  @override
  int get peopleThatEndedCourse;
  @override
  @JsonKey(ignore: true)
  _$$_CourseStatsCopyWith<_$_CourseStats> get copyWith =>
      throw _privateConstructorUsedError;
}
