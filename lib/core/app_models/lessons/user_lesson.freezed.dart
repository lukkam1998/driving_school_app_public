// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_lesson.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserLesson _$UserLessonFromJson(Map<String, dynamic> json) {
  return _UserLesson.fromJson(json);
}

/// @nodoc
mixin _$UserLesson {
  String? get lessonId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get tutorId => throw _privateConstructorUsedError;
  String get userCourseId => throw _privateConstructorUsedError;
  DateTime get dayOfLesson => throw _privateConstructorUsedError;
  DateTime get startOfLesson =>
      throw _privateConstructorUsedError; // TimeOfDay is not serializable instead using String
  DateTime get endOfLesson => throw _privateConstructorUsedError; // Same here
  bool get isApproved => throw _privateConstructorUsedError;
  bool get hasTookPlace => throw _privateConstructorUsedError;
  bool get isModified => throw _privateConstructorUsedError;
  bool get isGoingNow =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(toJson: dateTimeToJson, fromJson: dateTimeFromJson)
  DateTime? get realStartOfLesson =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(toJson: dateTimeToJson, fromJson: dateTimeFromJson)
  DateTime? get realEndOfLesson => throw _privateConstructorUsedError;
  List<RideMarker>? get rideMarkes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLessonCopyWith<UserLesson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLessonCopyWith<$Res> {
  factory $UserLessonCopyWith(
          UserLesson value, $Res Function(UserLesson) then) =
      _$UserLessonCopyWithImpl<$Res, UserLesson>;
  @useResult
  $Res call(
      {String? lessonId,
      String userId,
      String tutorId,
      String userCourseId,
      DateTime dayOfLesson,
      DateTime startOfLesson,
      DateTime endOfLesson,
      bool isApproved,
      bool hasTookPlace,
      bool isModified,
      bool isGoingNow,
      @JsonKey(toJson: dateTimeToJson, fromJson: dateTimeFromJson)
          DateTime? realStartOfLesson,
      @JsonKey(toJson: dateTimeToJson, fromJson: dateTimeFromJson)
          DateTime? realEndOfLesson,
      List<RideMarker>? rideMarkes});
}

/// @nodoc
class _$UserLessonCopyWithImpl<$Res, $Val extends UserLesson>
    implements $UserLessonCopyWith<$Res> {
  _$UserLessonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = freezed,
    Object? userId = null,
    Object? tutorId = null,
    Object? userCourseId = null,
    Object? dayOfLesson = null,
    Object? startOfLesson = null,
    Object? endOfLesson = null,
    Object? isApproved = null,
    Object? hasTookPlace = null,
    Object? isModified = null,
    Object? isGoingNow = null,
    Object? realStartOfLesson = freezed,
    Object? realEndOfLesson = freezed,
    Object? rideMarkes = freezed,
  }) {
    return _then(_value.copyWith(
      lessonId: freezed == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      tutorId: null == tutorId
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String,
      userCourseId: null == userCourseId
          ? _value.userCourseId
          : userCourseId // ignore: cast_nullable_to_non_nullable
              as String,
      dayOfLesson: null == dayOfLesson
          ? _value.dayOfLesson
          : dayOfLesson // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startOfLesson: null == startOfLesson
          ? _value.startOfLesson
          : startOfLesson // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endOfLesson: null == endOfLesson
          ? _value.endOfLesson
          : endOfLesson // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isApproved: null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool,
      hasTookPlace: null == hasTookPlace
          ? _value.hasTookPlace
          : hasTookPlace // ignore: cast_nullable_to_non_nullable
              as bool,
      isModified: null == isModified
          ? _value.isModified
          : isModified // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoingNow: null == isGoingNow
          ? _value.isGoingNow
          : isGoingNow // ignore: cast_nullable_to_non_nullable
              as bool,
      realStartOfLesson: freezed == realStartOfLesson
          ? _value.realStartOfLesson
          : realStartOfLesson // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      realEndOfLesson: freezed == realEndOfLesson
          ? _value.realEndOfLesson
          : realEndOfLesson // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rideMarkes: freezed == rideMarkes
          ? _value.rideMarkes
          : rideMarkes // ignore: cast_nullable_to_non_nullable
              as List<RideMarker>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserLessonCopyWith<$Res>
    implements $UserLessonCopyWith<$Res> {
  factory _$$_UserLessonCopyWith(
          _$_UserLesson value, $Res Function(_$_UserLesson) then) =
      __$$_UserLessonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? lessonId,
      String userId,
      String tutorId,
      String userCourseId,
      DateTime dayOfLesson,
      DateTime startOfLesson,
      DateTime endOfLesson,
      bool isApproved,
      bool hasTookPlace,
      bool isModified,
      bool isGoingNow,
      @JsonKey(toJson: dateTimeToJson, fromJson: dateTimeFromJson)
          DateTime? realStartOfLesson,
      @JsonKey(toJson: dateTimeToJson, fromJson: dateTimeFromJson)
          DateTime? realEndOfLesson,
      List<RideMarker>? rideMarkes});
}

/// @nodoc
class __$$_UserLessonCopyWithImpl<$Res>
    extends _$UserLessonCopyWithImpl<$Res, _$_UserLesson>
    implements _$$_UserLessonCopyWith<$Res> {
  __$$_UserLessonCopyWithImpl(
      _$_UserLesson _value, $Res Function(_$_UserLesson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = freezed,
    Object? userId = null,
    Object? tutorId = null,
    Object? userCourseId = null,
    Object? dayOfLesson = null,
    Object? startOfLesson = null,
    Object? endOfLesson = null,
    Object? isApproved = null,
    Object? hasTookPlace = null,
    Object? isModified = null,
    Object? isGoingNow = null,
    Object? realStartOfLesson = freezed,
    Object? realEndOfLesson = freezed,
    Object? rideMarkes = freezed,
  }) {
    return _then(_$_UserLesson(
      lessonId: freezed == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      tutorId: null == tutorId
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String,
      userCourseId: null == userCourseId
          ? _value.userCourseId
          : userCourseId // ignore: cast_nullable_to_non_nullable
              as String,
      dayOfLesson: null == dayOfLesson
          ? _value.dayOfLesson
          : dayOfLesson // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startOfLesson: null == startOfLesson
          ? _value.startOfLesson
          : startOfLesson // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endOfLesson: null == endOfLesson
          ? _value.endOfLesson
          : endOfLesson // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isApproved: null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool,
      hasTookPlace: null == hasTookPlace
          ? _value.hasTookPlace
          : hasTookPlace // ignore: cast_nullable_to_non_nullable
              as bool,
      isModified: null == isModified
          ? _value.isModified
          : isModified // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoingNow: null == isGoingNow
          ? _value.isGoingNow
          : isGoingNow // ignore: cast_nullable_to_non_nullable
              as bool,
      realStartOfLesson: freezed == realStartOfLesson
          ? _value.realStartOfLesson
          : realStartOfLesson // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      realEndOfLesson: freezed == realEndOfLesson
          ? _value.realEndOfLesson
          : realEndOfLesson // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rideMarkes: freezed == rideMarkes
          ? _value._rideMarkes
          : rideMarkes // ignore: cast_nullable_to_non_nullable
              as List<RideMarker>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserLesson implements _UserLesson {
  _$_UserLesson(
      {required this.lessonId,
      required this.userId,
      required this.tutorId,
      required this.userCourseId,
      required this.dayOfLesson,
      required this.startOfLesson,
      required this.endOfLesson,
      required this.isApproved,
      required this.hasTookPlace,
      required this.isModified,
      required this.isGoingNow,
      @JsonKey(toJson: dateTimeToJson, fromJson: dateTimeFromJson)
          this.realStartOfLesson,
      @JsonKey(toJson: dateTimeToJson, fromJson: dateTimeFromJson)
          this.realEndOfLesson,
      final List<RideMarker>? rideMarkes})
      : _rideMarkes = rideMarkes;

  factory _$_UserLesson.fromJson(Map<String, dynamic> json) =>
      _$$_UserLessonFromJson(json);

  @override
  final String? lessonId;
  @override
  final String userId;
  @override
  final String tutorId;
  @override
  final String userCourseId;
  @override
  final DateTime dayOfLesson;
  @override
  final DateTime startOfLesson;
// TimeOfDay is not serializable instead using String
  @override
  final DateTime endOfLesson;
// Same here
  @override
  final bool isApproved;
  @override
  final bool hasTookPlace;
  @override
  final bool isModified;
  @override
  final bool isGoingNow;
// ignore: invalid_annotation_target
  @override
  @JsonKey(toJson: dateTimeToJson, fromJson: dateTimeFromJson)
  final DateTime? realStartOfLesson;
// ignore: invalid_annotation_target
  @override
  @JsonKey(toJson: dateTimeToJson, fromJson: dateTimeFromJson)
  final DateTime? realEndOfLesson;
  final List<RideMarker>? _rideMarkes;
  @override
  List<RideMarker>? get rideMarkes {
    final value = _rideMarkes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserLesson(lessonId: $lessonId, userId: $userId, tutorId: $tutorId, userCourseId: $userCourseId, dayOfLesson: $dayOfLesson, startOfLesson: $startOfLesson, endOfLesson: $endOfLesson, isApproved: $isApproved, hasTookPlace: $hasTookPlace, isModified: $isModified, isGoingNow: $isGoingNow, realStartOfLesson: $realStartOfLesson, realEndOfLesson: $realEndOfLesson, rideMarkes: $rideMarkes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserLesson &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.tutorId, tutorId) || other.tutorId == tutorId) &&
            (identical(other.userCourseId, userCourseId) ||
                other.userCourseId == userCourseId) &&
            (identical(other.dayOfLesson, dayOfLesson) ||
                other.dayOfLesson == dayOfLesson) &&
            (identical(other.startOfLesson, startOfLesson) ||
                other.startOfLesson == startOfLesson) &&
            (identical(other.endOfLesson, endOfLesson) ||
                other.endOfLesson == endOfLesson) &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved) &&
            (identical(other.hasTookPlace, hasTookPlace) ||
                other.hasTookPlace == hasTookPlace) &&
            (identical(other.isModified, isModified) ||
                other.isModified == isModified) &&
            (identical(other.isGoingNow, isGoingNow) ||
                other.isGoingNow == isGoingNow) &&
            (identical(other.realStartOfLesson, realStartOfLesson) ||
                other.realStartOfLesson == realStartOfLesson) &&
            (identical(other.realEndOfLesson, realEndOfLesson) ||
                other.realEndOfLesson == realEndOfLesson) &&
            const DeepCollectionEquality()
                .equals(other._rideMarkes, _rideMarkes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lessonId,
      userId,
      tutorId,
      userCourseId,
      dayOfLesson,
      startOfLesson,
      endOfLesson,
      isApproved,
      hasTookPlace,
      isModified,
      isGoingNow,
      realStartOfLesson,
      realEndOfLesson,
      const DeepCollectionEquality().hash(_rideMarkes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserLessonCopyWith<_$_UserLesson> get copyWith =>
      __$$_UserLessonCopyWithImpl<_$_UserLesson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserLessonToJson(
      this,
    );
  }
}

abstract class _UserLesson implements UserLesson {
  factory _UserLesson(
      {required final String? lessonId,
      required final String userId,
      required final String tutorId,
      required final String userCourseId,
      required final DateTime dayOfLesson,
      required final DateTime startOfLesson,
      required final DateTime endOfLesson,
      required final bool isApproved,
      required final bool hasTookPlace,
      required final bool isModified,
      required final bool isGoingNow,
      @JsonKey(toJson: dateTimeToJson, fromJson: dateTimeFromJson)
          final DateTime? realStartOfLesson,
      @JsonKey(toJson: dateTimeToJson, fromJson: dateTimeFromJson)
          final DateTime? realEndOfLesson,
      final List<RideMarker>? rideMarkes}) = _$_UserLesson;

  factory _UserLesson.fromJson(Map<String, dynamic> json) =
      _$_UserLesson.fromJson;

  @override
  String? get lessonId;
  @override
  String get userId;
  @override
  String get tutorId;
  @override
  String get userCourseId;
  @override
  DateTime get dayOfLesson;
  @override
  DateTime get startOfLesson;
  @override // TimeOfDay is not serializable instead using String
  DateTime get endOfLesson;
  @override // Same here
  bool get isApproved;
  @override
  bool get hasTookPlace;
  @override
  bool get isModified;
  @override
  bool get isGoingNow;
  @override // ignore: invalid_annotation_target
  @JsonKey(toJson: dateTimeToJson, fromJson: dateTimeFromJson)
  DateTime? get realStartOfLesson;
  @override // ignore: invalid_annotation_target
  @JsonKey(toJson: dateTimeToJson, fromJson: dateTimeFromJson)
  DateTime? get realEndOfLesson;
  @override
  List<RideMarker>? get rideMarkes;
  @override
  @JsonKey(ignore: true)
  _$$_UserLessonCopyWith<_$_UserLesson> get copyWith =>
      throw _privateConstructorUsedError;
}
