import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:managing_driving_school_app/core/app_models/promotions/promotion.dart';

class AddPromotionData {
  final String? promotionId;
  final String courseId;
  final double promotionValue;
  final String description;
  final File plImage;
  final File engImage;
  final Timestamp expiryDate;

  AddPromotionData({
    this.promotionId,
    required this.courseId,
    required this.promotionValue,
    required this.description,
    required this.plImage,
    required this.engImage,
    required this.expiryDate,
  });

  Promotion getPromotionFromPromotionData(String engUrl, String plUrl) {
    return Promotion(
      promotionId,
      courseId,
      promotionValue,
      description,
      plUrl,
      engUrl,
      expiryDate,
    );
  }
}
