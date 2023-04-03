import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../helpers/time_stamp_serializer.dart';
part 'ride_marker.g.dart';
part 'ride_marker.freezed.dart';

@freezed
class RideMarker with _$RideMarker {
  const factory RideMarker({
    required double latitude,
    required double longitude,
    // ignore: invalid_annotation_target
    @JsonKey(toJson: timeStampToJson, fromJson: timestampFromTimestamp)
        required Timestamp timestamp,
  }) = _RideMarker;

  factory RideMarker.fromJson(Map<String, Object?> json) =>
      _$RideMarkerFromJson(json);
}
