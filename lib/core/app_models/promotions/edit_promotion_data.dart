import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:managing_driving_school_app/core/app_models/promotions/promotion.dart';

class EditPromotionData {
  final String promotionId;
  final String courseId;
  final double promotionValue;
  final String description;
  final File? plImage;
  final File? engImage;
  final String oldPlImagePath;
  final String oldEngImagePath;
  final Timestamp expiryDate;

  EditPromotionData({
    required this.promotionId,
    required this.courseId,
    required this.promotionValue,
    required this.description,
    required this.oldEngImagePath,
    required this.oldPlImagePath,
    this.plImage,
    this.engImage,
    required this.expiryDate,
  });

  Promotion getPromotionFromPromotionData(String? engUrl, String? plUrl) {
    return Promotion(
      promotionId,
      courseId,
      promotionValue,
      description,
      plUrl ?? oldPlImagePath,
      engUrl ?? oldEngImagePath,
      expiryDate,
    );
  }
}
