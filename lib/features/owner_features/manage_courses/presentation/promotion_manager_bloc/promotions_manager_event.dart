part of 'promotions_manager_bloc.dart';

@freezed
class PromotionsManagerEvent with _$PromotionsManagerEvent {
  const factory PromotionsManagerEvent.addPromotion(
      AddPromotionData promotion) = AddPromotionEvent;
  const factory PromotionsManagerEvent.editPromotion(
      EditPromotionData promotion) = EditPromotionEvent;
  const factory PromotionsManagerEvent.endPromotion(String promotionId) =
      EndPromotionEvent;
  const factory PromotionsManagerEvent.getPromotions() = GetPromotionsEvent;
}
