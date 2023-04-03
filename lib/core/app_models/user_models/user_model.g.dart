// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      userId: json['userId'] as String,
      email: json['email'] as String,
      userRole: json['userRole'] as String,
      chats:
          (json['chats'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isAuthorized: json['isAuthorized'] as bool?,
      firstLogin: json['firstLogin'] as bool?,
      imagePath: json['imagePath'] as String?,
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      name: json['name'] as String?,
      surname: json['surname'] as String?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'userRole': instance.userRole,
      'chats': instance.chats,
      'isAuthorized': instance.isAuthorized,
      'firstLogin': instance.firstLogin,
      'imagePath': instance.imagePath,
      'birthDate': instance.birthDate?.toIso8601String(),
      'name': instance.name,
      'surname': instance.surname,
    };
