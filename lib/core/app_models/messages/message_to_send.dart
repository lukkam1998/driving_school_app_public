import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../helpers/time_stamp_serializer.dart';

part 'message_to_send.g.dart';

@JsonSerializable(explicitToJson: true)
class MessageToSend {
  final String messageBody;
  final String senderId;
  @JsonKey(toJson: timeStampToJson, fromJson: timeStampFromJson)
  final Timestamp timestamp;

  MessageToSend({
    required this.timestamp,
    required this.senderId,
    required this.messageBody,
  });

  factory MessageToSend.fromJson(Map<String, dynamic> json) =>
      _$MessageToSendFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToSendToJson(this);
}

