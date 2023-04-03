part of 'promotions_manager_bloc.dart';

@freezed
class PromotionsManagerState with _$PromotionsManagerState {
  const factory PromotionsManagerState({
    required List<Promotion> runningPromotions,
    required List<Promotion> expiredPromotions,
    required bool isLoading,
    required bool hasError,
    PromotionsActionResult? actionResult,
  }) = _PromotionManagerState;

  factory PromotionsManagerState.initial() => const PromotionsManagerState(
        runningPromotions: [],
        expiredPromotions: [],
        isLoading: false,
        hasError: false,
      );
}
