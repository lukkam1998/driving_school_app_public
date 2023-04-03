// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_course_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCourseDetails _$UserCourseDetailsFromJson(Map<String, dynamic> json) {
  return _UserCourseDetails.fromJson(json);
}

/// @nodoc
mixin _$UserCourseDetails {
  UserCourse get userCourse => throw _privateConstructorUsedError;
  UserModel? get secondUserData => throw _privateConstructorUsedError;
  Course get course => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCourseDetailsCopyWith<UserCourseDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCourseDetailsCopyWith<$Res> {
  factory $UserCourseDetailsCopyWith(
          UserCourseDetails value, $Res Function(UserCourseDetails) then) =
      _$UserCourseDetailsCopyWithImpl<$Res, UserCourseDetails>;
  @useResult
  $Res call({UserCourse userCourse, UserModel? secondUserData, Course course});

  $UserCourseCopyWith<$Res> get userCourse;
  $UserModelCopyWith<$Res>? get secondUserData;
  $CourseCopyWith<$Res> get course;
}

/// @nodoc
class _$UserCourseDetailsCopyWithImpl<$Res, $Val extends UserCourseDetails>
    implements $UserCourseDetailsCopyWith<$Res> {
  _$UserCourseDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCourse = null,
    Object? secondUserData = freezed,
    Object? course = null,
  }) {
    return _then(_value.copyWith(
      userCourse: null == userCourse
          ? _value.userCourse
          : userCourse // ignore: cast_nullable_to_non_nullable
              as UserCourse,
      secondUserData: freezed == secondUserData
          ? _value.secondUserData
          : secondUserData // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCourseCopyWith<$Res> get userCourse {
    return $UserCourseCopyWith<$Res>(_value.userCourse, (value) {
      return _then(_value.copyWith(userCourse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get secondUserData {
    if (_value.secondUserData == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.secondUserData!, (value) {
      return _then(_value.copyWith(secondUserData: value) as $Val);
    });
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
abstract class _$$_UserCourseDetailsCopyWith<$Res>
    implements $UserCourseDetailsCopyWith<$Res> {
  factory _$$_UserCourseDetailsCopyWith(_$_UserCourseDetails value,
          $Res Function(_$_UserCourseDetails) then) =
      __$$_UserCourseDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserCourse userCourse, UserModel? secondUserData, Course course});

  @override
  $UserCourseCopyWith<$Res> get userCourse;
  @override
  $UserModelCopyWith<$Res>? get secondUserData;
  @override
  $CourseCopyWith<$Res> get course;
}

/// @nodoc
class __$$_UserCourseDetailsCopyWithImpl<$Res>
    extends _$UserCourseDetailsCopyWithImpl<$Res, _$_UserCourseDetails>
    implements _$$_UserCourseDetailsCopyWith<$Res> {
  __$$_UserCourseDetailsCopyWithImpl(
      _$_UserCourseDetails _value, $Res Function(_$_UserCourseDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCourse = null,
    Object? secondUserData = freezed,
    Object? course = null,
  }) {
    return _then(_$_UserCourseDetails(
      null == userCourse
          ? _value.userCourse
          : userCourse // ignore: cast_nullable_to_non_nullable
              as UserCourse,
      freezed == secondUserData
          ? _value.secondUserData
          : secondUserData // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserCourseDetails implements _UserCourseDetails {
  const _$_UserCourseDetails(this.userCourse, this.secondUserData, this.course);

  factory _$_UserCourseDetails.fromJson(Map<String, dynamic> json) =>
      _$$_UserCourseDetailsFromJson(json);

  @override
  final UserCourse userCourse;
  @override
  final UserModel? secondUserData;
  @override
  final Course course;

  @override
  String toString() {
    return 'UserCourseDetails(userCourse: $userCourse, secondUserData: $secondUserData, course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCourseDetails &&
            (identical(other.userCourse, userCourse) ||
                other.userCourse == userCourse) &&
            (identical(other.secondUserData, secondUserData) ||
                other.secondUserData == secondUserData) &&
            (identical(other.course, course) || other.course == course));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userCourse, secondUserData, course);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCourseDetailsCopyWith<_$_UserCourseDetails> get copyWith =>
      __$$_UserCourseDetailsCopyWithImpl<_$_UserCourseDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCourseDetailsToJson(
      this,
    );
  }
}

abstract class _UserCourseDetails implements UserCourseDetails {
  const factory _UserCourseDetails(
      final UserCourse userCourse,
      final UserModel? secondUserData,
      final Course course) = _$_UserCourseDetails;

  factory _UserCourseDetails.fromJson(Map<String, dynamic> json) =
      _$_UserCourseDetails.fromJson;

  @override
  UserCourse get userCourse;
  @override
  UserModel? get secondUserData;
  @override
  Course get course;
  @override
  @JsonKey(ignore: true)
  _$$_UserCourseDetailsCopyWith<_$_UserCourseDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
