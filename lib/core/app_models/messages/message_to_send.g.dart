// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_to_send.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageToSend _$MessageToSendFromJson(Map<String, dynamic> json) =>
    MessageToSend(
      timestamp: timeStampFromJson(json['timestamp'] as Map<String, dynamic>),
      senderId: json['senderId'] as String,
      messageBody: json['messageBody'] as String,
    );

Map<String, dynamic> _$MessageToSendToJson(MessageToSend instance) =>
    <String, dynamic>{
      'messageBody': instance.messageBody,
      'senderId': instance.senderId,
      'timestamp': timeStampToJson(instance.timestamp),
    };
