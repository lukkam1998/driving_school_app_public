// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      timestamp: timestampFromTimestamp(json['timestamp'] as Timestamp),
      senderId: json['senderId'] as String,
      messageBody: json['messageBody'] as String,
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'messageBody': instance.messageBody,
      'senderId': instance.senderId,
      'timestamp': timeStampToJson(instance.timestamp),
    };
