import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../helpers/time_stamp_serializer.dart';

part 'promotion.g.dart';

@JsonSerializable(explicitToJson: true)
class Promotion {
  final String? promotionId;
  final String courseId;
  final double promotionValue;
  final String description;
  final String plImageUrl;
  final String engImageUrl;
  @JsonKey(toJson: timeStampToJson, fromJson: timestampFromTimestamp)
  final Timestamp expiryDate;

  Promotion(
    this.promotionId,
    this.courseId,
    this.promotionValue,
    this.description,
    this.plImageUrl,
    this.engImageUrl,
    this.expiryDate,
  );

  factory Promotion.fromJson(Map<String, Object?> json) =>
      _$PromotionFromJson(json);

  Map<String, dynamic> toJson() => _$PromotionToJson(this);
}
