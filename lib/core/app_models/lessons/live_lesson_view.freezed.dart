// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'live_lesson_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LiveLessonView _$LiveLessonViewFromJson(Map<String, dynamic> json) {
  return _LiveLessonView.fromJson(json);
}

/// @nodoc
mixin _$LiveLessonView {
  String get tutorName => throw _privateConstructorUsedError;
  String get tutorSurname => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get userSurname => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get courseName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveLessonViewCopyWith<LiveLessonView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveLessonViewCopyWith<$Res> {
  factory $LiveLessonViewCopyWith(
          LiveLessonView value, $Res Function(LiveLessonView) then) =
      _$LiveLessonViewCopyWithImpl<$Res, LiveLessonView>;
  @useResult
  $Res call(
      {String tutorName,
      String tutorSurname,
      String userName,
      String userSurname,
      double latitude,
      double longitude,
      String courseName});
}

/// @nodoc
class _$LiveLessonViewCopyWithImpl<$Res, $Val extends LiveLessonView>
    implements $LiveLessonViewCopyWith<$Res> {
  _$LiveLessonViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutorName = null,
    Object? tutorSurname = null,
    Object? userName = null,
    Object? userSurname = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? courseName = null,
  }) {
    return _then(_value.copyWith(
      tutorName: null == tutorName
          ? _value.tutorName
          : tutorName // ignore: cast_nullable_to_non_nullable
              as String,
      tutorSurname: null == tutorSurname
          ? _value.tutorSurname
          : tutorSurname // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userSurname: null == userSurname
          ? _value.userSurname
          : userSurname // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LiveLessonViewCopyWith<$Res>
    implements $LiveLessonViewCopyWith<$Res> {
  factory _$$_LiveLessonViewCopyWith(
          _$_LiveLessonView value, $Res Function(_$_LiveLessonView) then) =
      __$$_LiveLessonViewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tutorName,
      String tutorSurname,
      String userName,
      String userSurname,
      double latitude,
      double longitude,
      String courseName});
}

/// @nodoc
class __$$_LiveLessonViewCopyWithImpl<$Res>
    extends _$LiveLessonViewCopyWithImpl<$Res, _$_LiveLessonView>
    implements _$$_LiveLessonViewCopyWith<$Res> {
  __$$_LiveLessonViewCopyWithImpl(
      _$_LiveLessonView _value, $Res Function(_$_LiveLessonView) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutorName = null,
    Object? tutorSurname = null,
    Object? userName = null,
    Object? userSurname = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? courseName = null,
  }) {
    return _then(_$_LiveLessonView(
      tutorName: null == tutorName
          ? _value.tutorName
          : tutorName // ignore: cast_nullable_to_non_nullable
              as String,
      tutorSurname: null == tutorSurname
          ? _value.tutorSurname
          : tutorSurname // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userSurname: null == userSurname
          ? _value.userSurname
          : userSurname // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LiveLessonView implements _LiveLessonView {
  _$_LiveLessonView(
      {required this.tutorName,
      required this.tutorSurname,
      required this.userName,
      required this.userSurname,
      required this.latitude,
      required this.longitude,
      required this.courseName});

  factory _$_LiveLessonView.fromJson(Map<String, dynamic> json) =>
      _$$_LiveLessonViewFromJson(json);

  @override
  final String tutorName;
  @override
  final String tutorSurname;
  @override
  final String userName;
  @override
  final String userSurname;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String courseName;

  @override
  String toString() {
    return 'LiveLessonView(tutorName: $tutorName, tutorSurname: $tutorSurname, userName: $userName, userSurname: $userSurname, latitude: $latitude, longitude: $longitude, courseName: $courseName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LiveLessonView &&
            (identical(other.tutorName, tutorName) ||
                other.tutorName == tutorName) &&
            (identical(other.tutorSurname, tutorSurname) ||
                other.tutorSurname == tutorSurname) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userSurname, userSurname) ||
                other.userSurname == userSurname) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tutorName, tutorSurname,
      userName, userSurname, latitude, longitude, courseName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LiveLessonViewCopyWith<_$_LiveLessonView> get copyWith =>
      __$$_LiveLessonViewCopyWithImpl<_$_LiveLessonView>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LiveLessonViewToJson(
      this,
    );
  }
}

abstract class _LiveLessonView implements LiveLessonView {
  factory _LiveLessonView(
      {required final String tutorName,
      required final String tutorSurname,
      required final String userName,
      required final String userSurname,
      required final double latitude,
      required final double longitude,
      required final String courseName}) = _$_LiveLessonView;

  factory _LiveLessonView.fromJson(Map<String, dynamic> json) =
      _$_LiveLessonView.fromJson;

  @override
  String get tutorName;
  @override
  String get tutorSurname;
  @override
  String get userName;
  @override
  String get userSurname;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get courseName;
  @override
  @JsonKey(ignore: true)
  _$$_LiveLessonViewCopyWith<_$_LiveLessonView> get copyWith =>
      throw _privateConstructorUsedError;
}
