// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'car.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Car _$CarFromJson(Map<String, dynamic> json) {
  return _Car.fromJson(json);
}

/// @nodoc
mixin _$Car {
  String? get carId => throw _privateConstructorUsedError;
  String get mark => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get carRegistration => throw _privateConstructorUsedError;
  DateTime get lastOilChange => throw _privateConstructorUsedError;
  DateTime get lastCarReview => throw _privateConstructorUsedError;
  int get kilometersDone => throw _privateConstructorUsedError;
  DateTime get pucharseDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarCopyWith<Car> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarCopyWith<$Res> {
  factory $CarCopyWith(Car value, $Res Function(Car) then) =
      _$CarCopyWithImpl<$Res, Car>;
  @useResult
  $Res call(
      {String? carId,
      String mark,
      String model,
      String carRegistration,
      DateTime lastOilChange,
      DateTime lastCarReview,
      int kilometersDone,
      DateTime pucharseDate});
}

/// @nodoc
class _$CarCopyWithImpl<$Res, $Val extends Car> implements $CarCopyWith<$Res> {
  _$CarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carId = freezed,
    Object? mark = null,
    Object? model = null,
    Object? carRegistration = null,
    Object? lastOilChange = null,
    Object? lastCarReview = null,
    Object? kilometersDone = null,
    Object? pucharseDate = null,
  }) {
    return _then(_value.copyWith(
      carId: freezed == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as String?,
      mark: null == mark
          ? _value.mark
          : mark // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      carRegistration: null == carRegistration
          ? _value.carRegistration
          : carRegistration // ignore: cast_nullable_to_non_nullable
              as String,
      lastOilChange: null == lastOilChange
          ? _value.lastOilChange
          : lastOilChange // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastCarReview: null == lastCarReview
          ? _value.lastCarReview
          : lastCarReview // ignore: cast_nullable_to_non_nullable
              as DateTime,
      kilometersDone: null == kilometersDone
          ? _value.kilometersDone
          : kilometersDone // ignore: cast_nullable_to_non_nullable
              as int,
      pucharseDate: null == pucharseDate
          ? _value.pucharseDate
          : pucharseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarCopyWith<$Res> implements $CarCopyWith<$Res> {
  factory _$$_CarCopyWith(_$_Car value, $Res Function(_$_Car) then) =
      __$$_CarCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? carId,
      String mark,
      String model,
      String carRegistration,
      DateTime lastOilChange,
      DateTime lastCarReview,
      int kilometersDone,
      DateTime pucharseDate});
}

/// @nodoc
class __$$_CarCopyWithImpl<$Res> extends _$CarCopyWithImpl<$Res, _$_Car>
    implements _$$_CarCopyWith<$Res> {
  __$$_CarCopyWithImpl(_$_Car _value, $Res Function(_$_Car) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carId = freezed,
    Object? mark = null,
    Object? model = null,
    Object? carRegistration = null,
    Object? lastOilChange = null,
    Object? lastCarReview = null,
    Object? kilometersDone = null,
    Object? pucharseDate = null,
  }) {
    return _then(_$_Car(
      carId: freezed == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as String?,
      mark: null == mark
          ? _value.mark
          : mark // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      carRegistration: null == carRegistration
          ? _value.carRegistration
          : carRegistration // ignore: cast_nullable_to_non_nullable
              as String,
      lastOilChange: null == lastOilChange
          ? _value.lastOilChange
          : lastOilChange // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastCarReview: null == lastCarReview
          ? _value.lastCarReview
          : lastCarReview // ignore: cast_nullable_to_non_nullable
              as DateTime,
      kilometersDone: null == kilometersDone
          ? _value.kilometersDone
          : kilometersDone // ignore: cast_nullable_to_non_nullable
              as int,
      pucharseDate: null == pucharseDate
          ? _value.pucharseDate
          : pucharseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Car implements _Car {
  const _$_Car(
      {required this.carId,
      required this.mark,
      required this.model,
      required this.carRegistration,
      required this.lastOilChange,
      required this.lastCarReview,
      required this.kilometersDone,
      required this.pucharseDate});

  factory _$_Car.fromJson(Map<String, dynamic> json) => _$$_CarFromJson(json);

  @override
  final String? carId;
  @override
  final String mark;
  @override
  final String model;
  @override
  final String carRegistration;
  @override
  final DateTime lastOilChange;
  @override
  final DateTime lastCarReview;
  @override
  final int kilometersDone;
  @override
  final DateTime pucharseDate;

  @override
  String toString() {
    return 'Car(carId: $carId, mark: $mark, model: $model, carRegistration: $carRegistration, lastOilChange: $lastOilChange, lastCarReview: $lastCarReview, kilometersDone: $kilometersDone, pucharseDate: $pucharseDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Car &&
            (identical(other.carId, carId) || other.carId == carId) &&
            (identical(other.mark, mark) || other.mark == mark) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.carRegistration, carRegistration) ||
                other.carRegistration == carRegistration) &&
            (identical(other.lastOilChange, lastOilChange) ||
                other.lastOilChange == lastOilChange) &&
            (identical(other.lastCarReview, lastCarReview) ||
                other.lastCarReview == lastCarReview) &&
            (identical(other.kilometersDone, kilometersDone) ||
                other.kilometersDone == kilometersDone) &&
            (identical(other.pucharseDate, pucharseDate) ||
                other.pucharseDate == pucharseDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      carId,
      mark,
      model,
      carRegistration,
      lastOilChange,
      lastCarReview,
      kilometersDone,
      pucharseDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarCopyWith<_$_Car> get copyWith =>
      __$$_CarCopyWithImpl<_$_Car>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarToJson(
      this,
    );
  }
}

abstract class _Car implements Car {
  const factory _Car(
      {required final String? carId,
      required final String mark,
      required final String model,
      required final String carRegistration,
      required final DateTime lastOilChange,
      required final DateTime lastCarReview,
      required final int kilometersDone,
      required final DateTime pucharseDate}) = _$_Car;

  factory _Car.fromJson(Map<String, dynamic> json) = _$_Car.fromJson;

  @override
  String? get carId;
  @override
  String get mark;
  @override
  String get model;
  @override
  String get carRegistration;
  @override
  DateTime get lastOilChange;
  @override
  DateTime get lastCarReview;
  @override
  int get kilometersDone;
  @override
  DateTime get pucharseDate;
  @override
  @JsonKey(ignore: true)
  _$$_CarCopyWith<_$_Car> get copyWith => throw _privateConstructorUsedError;
}
