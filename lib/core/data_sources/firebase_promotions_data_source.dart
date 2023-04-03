import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:managing_driving_school_app/core/app_models/app_exceptions.dart';
import 'package:managing_driving_school_app/core/app_models/success.dart';
import '../../generated/l10n.dart';
import '../app_models/promotions/edit_promotion_data.dart';
import '../app_models/promotions/promotion.dart';
import '../app_models/promotions/promotion_add_data.dart';

abstract class FirebasePromotionsDataSource {
  Future<List<Promotion>> getPromotions();
  Future<Success> addPromotion(AddPromotionData promotion);
  Future<Success> editPromotion(EditPromotionData promotion);
  Future<Success> endPromotion(String promotionId);
}

@LazySingleton(as: FirebasePromotionsDataSource)
class FirebasePromotionsDataSourceImpl extends FirebasePromotionsDataSource {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseStorage _firebaseStorage;

  FirebasePromotionsDataSourceImpl(
    this._firebaseFirestore,
    this._firebaseStorage,
  );

  @override
  Future<Success> addPromotion(
    AddPromotionData promotion,
  ) async {
    String engImagePath = await _putPromotionImage(promotion.engImage,
        'promotion${promotion.courseId}${promotion.expiryDate.toDate()}EN');
    String plImagePath = await _putPromotionImage(promotion.plImage,
        'promotion${promotion.courseId}${promotion.expiryDate.toDate()}PL');
    final promotionData =
        promotion.getPromotionFromPromotionData(engImagePath, plImagePath);

    final courseAvailablePromotions = await _firebaseFirestore
        .collection('promotion')
        .where('courseId', isEqualTo: promotion.courseId)
        .where('isAvailable', isEqualTo: true)
        .get()
        .then(
          (value) => value.docs
              .map(
                (e) => Promotion.fromJson(
                  e.data(),
                ),
              )
              .toList(),
        );
    if (courseAvailablePromotions.isNotEmpty) {
      throw AppFirebaseException(S().promotion_is_already_running);
    }

    final res = await _firebaseFirestore.collection('promotion').add(
          promotionData.toJson(),
        );

    await _firebaseFirestore
        .collection('promotion')
        .doc(res.id)
        .update({'promotionId': res.id});
    return Success();
  }

  Future<String> _putPromotionImage(File file, String promotionFileName) async {
    final ref = _firebaseStorage
        .ref()
        .child('promotions')
        .child('$promotionFileName.jpg');
    await ref.putFile(file);
    String filePath = await ref.getDownloadURL();
    return filePath;
  }

  @override
  Future<Success> editPromotion(EditPromotionData promotion) async {
    String? plImagePath;
    String? engImagePath;
    if (promotion.plImage != null) {
      plImagePath = await _putPromotionImage(promotion.plImage!,
          'promotion${promotion.courseId}${promotion.expiryDate.toDate()}PL');
    }

    if (promotion.engImage != null) {
      engImagePath = await _putPromotionImage(promotion.plImage!,
          'promotion${promotion.courseId}${promotion.expiryDate.toDate()}ENG');
    }

    final updatedPromotion =
        promotion.getPromotionFromPromotionData(engImagePath, plImagePath);
    await _firebaseFirestore
        .collection('promotion')
        .doc(promotion.promotionId)
        .update(updatedPromotion.toJson());
    return Success();
  }

  @override
  Future<Success> endPromotion(String promotionId) {
    // TODO: implement endPromotion
    throw UnimplementedError();
  }

  @override
  Future<List<Promotion>> getPromotions() async {
    final promotionList =
        await _firebaseFirestore.collection('promotion').get().then(
              (value) => value.docs
                  .map(
                    (promotion) => Promotion.fromJson(
                      promotion.data(),
                    ),
                  )
                  .toList(),
            );
    return promotionList;
  }
}
