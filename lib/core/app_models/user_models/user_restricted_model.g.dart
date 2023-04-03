// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_restricted_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserRestrictedModel _$$_UserRestrictedModelFromJson(
        Map<String, dynamic> json) =>
    _$_UserRestrictedModel(
      userId: json['userId'] as String,
      email: json['email'] as String,
      chats:
          (json['chats'] as List<dynamic>?)?.map((e) => e as String).toList(),
      userRole: json['userRole'] as String?,
      imagePath: json['imagePath'] as String?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
    );

Map<String, dynamic> _$$_UserRestrictedModelToJson(
        _$_UserRestrictedModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'chats': instance.chats,
      'userRole': instance.userRole,
      'imagePath': instance.imagePath,
      'name': instance.name,
      'surname': instance.surname,
    };
