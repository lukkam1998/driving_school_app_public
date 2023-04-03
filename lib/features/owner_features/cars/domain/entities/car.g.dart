// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Car _$$_CarFromJson(Map<String, dynamic> json) => _$_Car(
      carId: json['carId'] as String?,
      mark: json['mark'] as String,
      model: json['model'] as String,
      carRegistration: json['carRegistration'] as String,
      lastOilChange: DateTime.parse(json['lastOilChange'] as String),
      lastCarReview: DateTime.parse(json['lastCarReview'] as String),
      kilometersDone: json['kilometersDone'] as int,
      pucharseDate: DateTime.parse(json['pucharseDate'] as String),
    );

Map<String, dynamic> _$$_CarToJson(_$_Car instance) => <String, dynamic>{
      'carId': instance.carId,
      'mark': instance.mark,
      'model': instance.model,
      'carRegistration': instance.carRegistration,
      'lastOilChange': instance.lastOilChange.toIso8601String(),
      'lastCarReview': instance.lastCarReview.toIso8601String(),
      'kilometersDone': instance.kilometersDone,
      'pucharseDate': instance.pucharseDate.toIso8601String(),
    };
