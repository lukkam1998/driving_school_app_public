// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Contact _$$_ContactFromJson(Map<String, dynamic> json) => _$_Contact(
      chatId: json['chatId'] as String,
      contactData: UserRestrictedModel.fromJson(
          json['contactData'] as Map<String, dynamic>),
      lastMessage: json['lastMessage'] == null
          ? null
          : Message.fromJson(json['lastMessage'] as Map<String, dynamic>),
      messageCount: json['messageCount'] as int?,
    );

Map<String, dynamic> _$$_ContactToJson(_$_Contact instance) =>
    <String, dynamic>{
      'chatId': instance.chatId,
      'contactData': instance.contactData,
      'lastMessage': instance.lastMessage,
      'messageCount': instance.messageCount,
    };
