// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'owner_home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OwnerHomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOngoingLessons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOngoingLessons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOngoingLessons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOngoingLessonsEvent value) getOngoingLessons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOngoingLessonsEvent value)? getOngoingLessons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOngoingLessonsEvent value)? getOngoingLessons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerHomeEventCopyWith<$Res> {
  factory $OwnerHomeEventCopyWith(
          OwnerHomeEvent value, $Res Function(OwnerHomeEvent) then) =
      _$OwnerHomeEventCopyWithImpl<$Res, OwnerHomeEvent>;
}

/// @nodoc
class _$OwnerHomeEventCopyWithImpl<$Res, $Val extends OwnerHomeEvent>
    implements $OwnerHomeEventCopyWith<$Res> {
  _$OwnerHomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetOngoingLessonsEventCopyWith<$Res> {
  factory _$$GetOngoingLessonsEventCopyWith(_$GetOngoingLessonsEvent value,
          $Res Function(_$GetOngoingLessonsEvent) then) =
      __$$GetOngoingLessonsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOngoingLessonsEventCopyWithImpl<$Res>
    extends _$OwnerHomeEventCopyWithImpl<$Res, _$GetOngoingLessonsEvent>
    implements _$$GetOngoingLessonsEventCopyWith<$Res> {
  __$$GetOngoingLessonsEventCopyWithImpl(_$GetOngoingLessonsEvent _value,
      $Res Function(_$GetOngoingLessonsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetOngoingLessonsEvent implements GetOngoingLessonsEvent {
  const _$GetOngoingLessonsEvent();

  @override
  String toString() {
    return 'OwnerHomeEvent.getOngoingLessons()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOngoingLessonsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOngoingLessons,
  }) {
    return getOngoingLessons();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOngoingLessons,
  }) {
    return getOngoingLessons?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOngoingLessons,
    required TResult orElse(),
  }) {
    if (getOngoingLessons != null) {
      return getOngoingLessons();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOngoingLessonsEvent value) getOngoingLessons,
  }) {
    return getOngoingLessons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOngoingLessonsEvent value)? getOngoingLessons,
  }) {
    return getOngoingLessons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOngoingLessonsEvent value)? getOngoingLessons,
    required TResult orElse(),
  }) {
    if (getOngoingLessons != null) {
      return getOngoingLessons(this);
    }
    return orElse();
  }
}

abstract class GetOngoingLessonsEvent implements OwnerHomeEvent {
  const factory GetOngoingLessonsEvent() = _$GetOngoingLessonsEvent;
}

/// @nodoc
mixin _$OwnerHomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  Stream<QuerySnapshot<Map<String, dynamic>>>? get lessonStream =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OwnerHomeStateCopyWith<OwnerHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerHomeStateCopyWith<$Res> {
  factory $OwnerHomeStateCopyWith(
          OwnerHomeState value, $Res Function(OwnerHomeState) then) =
      _$OwnerHomeStateCopyWithImpl<$Res, OwnerHomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      Stream<QuerySnapshot<Map<String, dynamic>>>? lessonStream});
}

/// @nodoc
class _$OwnerHomeStateCopyWithImpl<$Res, $Val extends OwnerHomeState>
    implements $OwnerHomeStateCopyWith<$Res> {
  _$OwnerHomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? lessonStream = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      lessonStream: freezed == lessonStream
          ? _value.lessonStream
          : lessonStream // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Map<String, dynamic>>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $OwnerHomeStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      Stream<QuerySnapshot<Map<String, dynamic>>>? lessonStream});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$OwnerHomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? lessonStream = freezed,
  }) {
    return _then(_$_Initial(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      lessonStream: freezed == lessonStream
          ? _value.lessonStream
          : lessonStream // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Map<String, dynamic>>>?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.isLoading,
      required this.hasError,
      required this.lessonStream});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final Stream<QuerySnapshot<Map<String, dynamic>>>? lessonStream;

  @override
  String toString() {
    return 'OwnerHomeState(isLoading: $isLoading, hasError: $hasError, lessonStream: $lessonStream)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.lessonStream, lessonStream) ||
                other.lessonStream == lessonStream));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, hasError, lessonStream);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements OwnerHomeState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      required final Stream<QuerySnapshot<Map<String, dynamic>>>?
          lessonStream}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  Stream<QuerySnapshot<Map<String, dynamic>>>? get lessonStream;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
