// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Promotion _$PromotionFromJson(Map<String, dynamic> json) => Promotion(
      json['promotionId'] as String?,
      json['courseId'] as String,
      (json['promotionValue'] as num).toDouble(),
      json['description'] as String,
      json['plImageUrl'] as String,
      json['engImageUrl'] as String,
      timestampFromTimestamp(json['expiryDate'] as Timestamp),
    );

Map<String, dynamic> _$PromotionToJson(Promotion instance) => <String, dynamic>{
      'promotionId': instance.promotionId,
      'courseId': instance.courseId,
      'promotionValue': instance.promotionValue,
      'description': instance.description,
      'plImageUrl': instance.plImageUrl,
      'engImageUrl': instance.engImageUrl,
      'expiryDate': timeStampToJson(instance.expiryDate),
    };
