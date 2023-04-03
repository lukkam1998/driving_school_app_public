// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ride_marker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RideMarker _$RideMarkerFromJson(Map<String, dynamic> json) {
  return _RideMarker.fromJson(json);
}

/// @nodoc
mixin _$RideMarker {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(toJson: timeStampToJson, fromJson: timestampFromTimestamp)
  Timestamp get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RideMarkerCopyWith<RideMarker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideMarkerCopyWith<$Res> {
  factory $RideMarkerCopyWith(
          RideMarker value, $Res Function(RideMarker) then) =
      _$RideMarkerCopyWithImpl<$Res, RideMarker>;
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      @JsonKey(toJson: timeStampToJson, fromJson: timestampFromTimestamp)
          Timestamp timestamp});
}

/// @nodoc
class _$RideMarkerCopyWithImpl<$Res, $Val extends RideMarker>
    implements $RideMarkerCopyWith<$Res> {
  _$RideMarkerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RideMarkerCopyWith<$Res>
    implements $RideMarkerCopyWith<$Res> {
  factory _$$_RideMarkerCopyWith(
          _$_RideMarker value, $Res Function(_$_RideMarker) then) =
      __$$_RideMarkerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      @JsonKey(toJson: timeStampToJson, fromJson: timestampFromTimestamp)
          Timestamp timestamp});
}

/// @nodoc
class __$$_RideMarkerCopyWithImpl<$Res>
    extends _$RideMarkerCopyWithImpl<$Res, _$_RideMarker>
    implements _$$_RideMarkerCopyWith<$Res> {
  __$$_RideMarkerCopyWithImpl(
      _$_RideMarker _value, $Res Function(_$_RideMarker) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? timestamp = null,
  }) {
    return _then(_$_RideMarker(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RideMarker implements _RideMarker {
  const _$_RideMarker(
      {required this.latitude,
      required this.longitude,
      @JsonKey(toJson: timeStampToJson, fromJson: timestampFromTimestamp)
          required this.timestamp});

  factory _$_RideMarker.fromJson(Map<String, dynamic> json) =>
      _$$_RideMarkerFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
// ignore: invalid_annotation_target
  @override
  @JsonKey(toJson: timeStampToJson, fromJson: timestampFromTimestamp)
  final Timestamp timestamp;

  @override
  String toString() {
    return 'RideMarker(latitude: $latitude, longitude: $longitude, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RideMarker &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RideMarkerCopyWith<_$_RideMarker> get copyWith =>
      __$$_RideMarkerCopyWithImpl<_$_RideMarker>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RideMarkerToJson(
      this,
    );
  }
}

abstract class _RideMarker implements RideMarker {
  const factory _RideMarker(
      {required final double latitude,
      required final double longitude,
      @JsonKey(toJson: timeStampToJson, fromJson: timestampFromTimestamp)
          required final Timestamp timestamp}) = _$_RideMarker;

  factory _RideMarker.fromJson(Map<String, dynamic> json) =
      _$_RideMarker.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override // ignore: invalid_annotation_target
  @JsonKey(toJson: timeStampToJson, fromJson: timestampFromTimestamp)
  Timestamp get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$_RideMarkerCopyWith<_$_RideMarker> get copyWith =>
      throw _privateConstructorUsedError;
}
