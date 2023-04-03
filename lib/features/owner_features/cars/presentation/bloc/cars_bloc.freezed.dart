// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cars_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCars,
    required TResult Function(Car car) addCar,
    required TResult Function(Car car) modifyCar,
    required TResult Function(Car car) removeCar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCars,
    TResult? Function(Car car)? addCar,
    TResult? Function(Car car)? modifyCar,
    TResult? Function(Car car)? removeCar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCars,
    TResult Function(Car car)? addCar,
    TResult Function(Car car)? modifyCar,
    TResult Function(Car car)? removeCar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCarsEvent value) getCars,
    required TResult Function(AddCarEvent value) addCar,
    required TResult Function(ModifyCarEvent value) modifyCar,
    required TResult Function(RemoveCarEvent value) removeCar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCarsEvent value)? getCars,
    TResult? Function(AddCarEvent value)? addCar,
    TResult? Function(ModifyCarEvent value)? modifyCar,
    TResult? Function(RemoveCarEvent value)? removeCar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCarsEvent value)? getCars,
    TResult Function(AddCarEvent value)? addCar,
    TResult Function(ModifyCarEvent value)? modifyCar,
    TResult Function(RemoveCarEvent value)? removeCar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarsEventCopyWith<$Res> {
  factory $CarsEventCopyWith(CarsEvent value, $Res Function(CarsEvent) then) =
      _$CarsEventCopyWithImpl<$Res, CarsEvent>;
}

/// @nodoc
class _$CarsEventCopyWithImpl<$Res, $Val extends CarsEvent>
    implements $CarsEventCopyWith<$Res> {
  _$CarsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCarsEventCopyWith<$Res> {
  factory _$$GetCarsEventCopyWith(
          _$GetCarsEvent value, $Res Function(_$GetCarsEvent) then) =
      __$$GetCarsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCarsEventCopyWithImpl<$Res>
    extends _$CarsEventCopyWithImpl<$Res, _$GetCarsEvent>
    implements _$$GetCarsEventCopyWith<$Res> {
  __$$GetCarsEventCopyWithImpl(
      _$GetCarsEvent _value, $Res Function(_$GetCarsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCarsEvent implements GetCarsEvent {
  const _$GetCarsEvent();

  @override
  String toString() {
    return 'CarsEvent.getCars()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCarsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCars,
    required TResult Function(Car car) addCar,
    required TResult Function(Car car) modifyCar,
    required TResult Function(Car car) removeCar,
  }) {
    return getCars();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCars,
    TResult? Function(Car car)? addCar,
    TResult? Function(Car car)? modifyCar,
    TResult? Function(Car car)? removeCar,
  }) {
    return getCars?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCars,
    TResult Function(Car car)? addCar,
    TResult Function(Car car)? modifyCar,
    TResult Function(Car car)? removeCar,
    required TResult orElse(),
  }) {
    if (getCars != null) {
      return getCars();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCarsEvent value) getCars,
    required TResult Function(AddCarEvent value) addCar,
    required TResult Function(ModifyCarEvent value) modifyCar,
    required TResult Function(RemoveCarEvent value) removeCar,
  }) {
    return getCars(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCarsEvent value)? getCars,
    TResult? Function(AddCarEvent value)? addCar,
    TResult? Function(ModifyCarEvent value)? modifyCar,
    TResult? Function(RemoveCarEvent value)? removeCar,
  }) {
    return getCars?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCarsEvent value)? getCars,
    TResult Function(AddCarEvent value)? addCar,
    TResult Function(ModifyCarEvent value)? modifyCar,
    TResult Function(RemoveCarEvent value)? removeCar,
    required TResult orElse(),
  }) {
    if (getCars != null) {
      return getCars(this);
    }
    return orElse();
  }
}

abstract class GetCarsEvent implements CarsEvent {
  const factory GetCarsEvent() = _$GetCarsEvent;
}

/// @nodoc
abstract class _$$AddCarEventCopyWith<$Res> {
  factory _$$AddCarEventCopyWith(
          _$AddCarEvent value, $Res Function(_$AddCarEvent) then) =
      __$$AddCarEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Car car});

  $CarCopyWith<$Res> get car;
}

/// @nodoc
class __$$AddCarEventCopyWithImpl<$Res>
    extends _$CarsEventCopyWithImpl<$Res, _$AddCarEvent>
    implements _$$AddCarEventCopyWith<$Res> {
  __$$AddCarEventCopyWithImpl(
      _$AddCarEvent _value, $Res Function(_$AddCarEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? car = null,
  }) {
    return _then(_$AddCarEvent(
      null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CarCopyWith<$Res> get car {
    return $CarCopyWith<$Res>(_value.car, (value) {
      return _then(_value.copyWith(car: value));
    });
  }
}

/// @nodoc

class _$AddCarEvent implements AddCarEvent {
  const _$AddCarEvent(this.car);

  @override
  final Car car;

  @override
  String toString() {
    return 'CarsEvent.addCar(car: $car)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCarEvent &&
            (identical(other.car, car) || other.car == car));
  }

  @override
  int get hashCode => Object.hash(runtimeType, car);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCarEventCopyWith<_$AddCarEvent> get copyWith =>
      __$$AddCarEventCopyWithImpl<_$AddCarEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCars,
    required TResult Function(Car car) addCar,
    required TResult Function(Car car) modifyCar,
    required TResult Function(Car car) removeCar,
  }) {
    return addCar(car);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCars,
    TResult? Function(Car car)? addCar,
    TResult? Function(Car car)? modifyCar,
    TResult? Function(Car car)? removeCar,
  }) {
    return addCar?.call(car);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCars,
    TResult Function(Car car)? addCar,
    TResult Function(Car car)? modifyCar,
    TResult Function(Car car)? removeCar,
    required TResult orElse(),
  }) {
    if (addCar != null) {
      return addCar(car);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCarsEvent value) getCars,
    required TResult Function(AddCarEvent value) addCar,
    required TResult Function(ModifyCarEvent value) modifyCar,
    required TResult Function(RemoveCarEvent value) removeCar,
  }) {
    return addCar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCarsEvent value)? getCars,
    TResult? Function(AddCarEvent value)? addCar,
    TResult? Function(ModifyCarEvent value)? modifyCar,
    TResult? Function(RemoveCarEvent value)? removeCar,
  }) {
    return addCar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCarsEvent value)? getCars,
    TResult Function(AddCarEvent value)? addCar,
    TResult Function(ModifyCarEvent value)? modifyCar,
    TResult Function(RemoveCarEvent value)? removeCar,
    required TResult orElse(),
  }) {
    if (addCar != null) {
      return addCar(this);
    }
    return orElse();
  }
}

abstract class AddCarEvent implements CarsEvent {
  const factory AddCarEvent(final Car car) = _$AddCarEvent;

  Car get car;
  @JsonKey(ignore: true)
  _$$AddCarEventCopyWith<_$AddCarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ModifyCarEventCopyWith<$Res> {
  factory _$$ModifyCarEventCopyWith(
          _$ModifyCarEvent value, $Res Function(_$ModifyCarEvent) then) =
      __$$ModifyCarEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Car car});

  $CarCopyWith<$Res> get car;
}

/// @nodoc
class __$$ModifyCarEventCopyWithImpl<$Res>
    extends _$CarsEventCopyWithImpl<$Res, _$ModifyCarEvent>
    implements _$$ModifyCarEventCopyWith<$Res> {
  __$$ModifyCarEventCopyWithImpl(
      _$ModifyCarEvent _value, $Res Function(_$ModifyCarEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? car = null,
  }) {
    return _then(_$ModifyCarEvent(
      null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CarCopyWith<$Res> get car {
    return $CarCopyWith<$Res>(_value.car, (value) {
      return _then(_value.copyWith(car: value));
    });
  }
}

/// @nodoc

class _$ModifyCarEvent implements ModifyCarEvent {
  const _$ModifyCarEvent(this.car);

  @override
  final Car car;

  @override
  String toString() {
    return 'CarsEvent.modifyCar(car: $car)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModifyCarEvent &&
            (identical(other.car, car) || other.car == car));
  }

  @override
  int get hashCode => Object.hash(runtimeType, car);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModifyCarEventCopyWith<_$ModifyCarEvent> get copyWith =>
      __$$ModifyCarEventCopyWithImpl<_$ModifyCarEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCars,
    required TResult Function(Car car) addCar,
    required TResult Function(Car car) modifyCar,
    required TResult Function(Car car) removeCar,
  }) {
    return modifyCar(car);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCars,
    TResult? Function(Car car)? addCar,
    TResult? Function(Car car)? modifyCar,
    TResult? Function(Car car)? removeCar,
  }) {
    return modifyCar?.call(car);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCars,
    TResult Function(Car car)? addCar,
    TResult Function(Car car)? modifyCar,
    TResult Function(Car car)? removeCar,
    required TResult orElse(),
  }) {
    if (modifyCar != null) {
      return modifyCar(car);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCarsEvent value) getCars,
    required TResult Function(AddCarEvent value) addCar,
    required TResult Function(ModifyCarEvent value) modifyCar,
    required TResult Function(RemoveCarEvent value) removeCar,
  }) {
    return modifyCar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCarsEvent value)? getCars,
    TResult? Function(AddCarEvent value)? addCar,
    TResult? Function(ModifyCarEvent value)? modifyCar,
    TResult? Function(RemoveCarEvent value)? removeCar,
  }) {
    return modifyCar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCarsEvent value)? getCars,
    TResult Function(AddCarEvent value)? addCar,
    TResult Function(ModifyCarEvent value)? modifyCar,
    TResult Function(RemoveCarEvent value)? removeCar,
    required TResult orElse(),
  }) {
    if (modifyCar != null) {
      return modifyCar(this);
    }
    return orElse();
  }
}

abstract class ModifyCarEvent implements CarsEvent {
  const factory ModifyCarEvent(final Car car) = _$ModifyCarEvent;

  Car get car;
  @JsonKey(ignore: true)
  _$$ModifyCarEventCopyWith<_$ModifyCarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveCarEventCopyWith<$Res> {
  factory _$$RemoveCarEventCopyWith(
          _$RemoveCarEvent value, $Res Function(_$RemoveCarEvent) then) =
      __$$RemoveCarEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Car car});

  $CarCopyWith<$Res> get car;
}

/// @nodoc
class __$$RemoveCarEventCopyWithImpl<$Res>
    extends _$CarsEventCopyWithImpl<$Res, _$RemoveCarEvent>
    implements _$$RemoveCarEventCopyWith<$Res> {
  __$$RemoveCarEventCopyWithImpl(
      _$RemoveCarEvent _value, $Res Function(_$RemoveCarEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? car = null,
  }) {
    return _then(_$RemoveCarEvent(
      null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CarCopyWith<$Res> get car {
    return $CarCopyWith<$Res>(_value.car, (value) {
      return _then(_value.copyWith(car: value));
    });
  }
}

/// @nodoc

class _$RemoveCarEvent implements RemoveCarEvent {
  const _$RemoveCarEvent(this.car);

  @override
  final Car car;

  @override
  String toString() {
    return 'CarsEvent.removeCar(car: $car)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCarEvent &&
            (identical(other.car, car) || other.car == car));
  }

  @override
  int get hashCode => Object.hash(runtimeType, car);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCarEventCopyWith<_$RemoveCarEvent> get copyWith =>
      __$$RemoveCarEventCopyWithImpl<_$RemoveCarEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCars,
    required TResult Function(Car car) addCar,
    required TResult Function(Car car) modifyCar,
    required TResult Function(Car car) removeCar,
  }) {
    return removeCar(car);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCars,
    TResult? Function(Car car)? addCar,
    TResult? Function(Car car)? modifyCar,
    TResult? Function(Car car)? removeCar,
  }) {
    return removeCar?.call(car);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCars,
    TResult Function(Car car)? addCar,
    TResult Function(Car car)? modifyCar,
    TResult Function(Car car)? removeCar,
    required TResult orElse(),
  }) {
    if (removeCar != null) {
      return removeCar(car);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCarsEvent value) getCars,
    required TResult Function(AddCarEvent value) addCar,
    required TResult Function(ModifyCarEvent value) modifyCar,
    required TResult Function(RemoveCarEvent value) removeCar,
  }) {
    return removeCar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCarsEvent value)? getCars,
    TResult? Function(AddCarEvent value)? addCar,
    TResult? Function(ModifyCarEvent value)? modifyCar,
    TResult? Function(RemoveCarEvent value)? removeCar,
  }) {
    return removeCar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCarsEvent value)? getCars,
    TResult Function(AddCarEvent value)? addCar,
    TResult Function(ModifyCarEvent value)? modifyCar,
    TResult Function(RemoveCarEvent value)? removeCar,
    required TResult orElse(),
  }) {
    if (removeCar != null) {
      return removeCar(this);
    }
    return orElse();
  }
}

abstract class RemoveCarEvent implements CarsEvent {
  const factory RemoveCarEvent(final Car car) = _$RemoveCarEvent;

  Car get car;
  @JsonKey(ignore: true)
  _$$RemoveCarEventCopyWith<_$RemoveCarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CarsState {
  List<Car> get cars => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get actionSucced => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarsStateCopyWith<CarsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarsStateCopyWith<$Res> {
  factory $CarsStateCopyWith(CarsState value, $Res Function(CarsState) then) =
      _$CarsStateCopyWithImpl<$Res, CarsState>;
  @useResult
  $Res call({List<Car> cars, bool isLoading, bool hasError, bool actionSucced});
}

/// @nodoc
class _$CarsStateCopyWithImpl<$Res, $Val extends CarsState>
    implements $CarsStateCopyWith<$Res> {
  _$CarsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
    Object? isLoading = null,
    Object? hasError = null,
    Object? actionSucced = null,
  }) {
    return _then(_value.copyWith(
      cars: null == cars
          ? _value.cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      actionSucced: null == actionSucced
          ? _value.actionSucced
          : actionSucced // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $CarsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Car> cars, bool isLoading, bool hasError, bool actionSucced});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CarsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
    Object? isLoading = null,
    Object? hasError = null,
    Object? actionSucced = null,
  }) {
    return _then(_$_Initial(
      cars: null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      actionSucced: null == actionSucced
          ? _value.actionSucced
          : actionSucced // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<Car> cars,
      required this.isLoading,
      required this.hasError,
      required this.actionSucced})
      : _cars = cars;

  final List<Car> _cars;
  @override
  List<Car> get cars {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool actionSucced;

  @override
  String toString() {
    return 'CarsState(cars: $cars, isLoading: $isLoading, hasError: $hasError, actionSucced: $actionSucced)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other._cars, _cars) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.actionSucced, actionSucced) ||
                other.actionSucced == actionSucced));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cars),
      isLoading,
      hasError,
      actionSucced);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements CarsState {
  const factory _Initial(
      {required final List<Car> cars,
      required final bool isLoading,
      required final bool hasError,
      required final bool actionSucced}) = _$_Initial;

  @override
  List<Car> get cars;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get actionSucced;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
