// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_marker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RideMarker _$$_RideMarkerFromJson(Map<String, dynamic> json) =>
    _$_RideMarker(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      timestamp: timestampFromTimestamp(json['timestamp'] as Timestamp),
    );

Map<String, dynamic> _$$_RideMarkerToJson(_$_RideMarker instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'timestamp': timeStampToJson(instance.timestamp),
    };
