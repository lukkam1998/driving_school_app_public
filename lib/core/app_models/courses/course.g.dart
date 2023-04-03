// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Course _$$_CourseFromJson(Map<String, dynamic> json) => _$_Course(
      id: json['id'] as String?,
      duration: json['duration'] as String,
      minAge: json['minAge'] as String,
      category: json['category'] as String,
      price: json['price'] as String,
      isAvailable: json['isAvailable'] as bool,
    );

Map<String, dynamic> _$$_CourseToJson(_$_Course instance) => <String, dynamic>{
      'id': instance.id,
      'duration': instance.duration,
      'minAge': instance.minAge,
      'category': instance.category,
      'price': instance.price,
      'isAvailable': instance.isAvailable,
    };
