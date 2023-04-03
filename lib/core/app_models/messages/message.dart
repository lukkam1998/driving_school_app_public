import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../helpers/time_stamp_serializer.dart';

part 'message.g.dart';

@JsonSerializable(explicitToJson: true)
class Message {
  final String messageBody;
  final String senderId;
  @JsonKey(fromJson: timestampFromTimestamp, toJson: timeStampToJson)
  final Timestamp timestamp;

  Message({
    required this.timestamp,
    required this.senderId,
    required this.messageBody,
  });

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
