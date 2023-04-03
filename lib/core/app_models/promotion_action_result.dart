
class PromotionsActionResult {
  final PromotionActionType promotionActionType;
  final bool doesSucced;
  final String actionDescription;

  PromotionsActionResult(
    this.promotionActionType,
    this.doesSucced,
    this.actionDescription,
  );
}

enum PromotionActionType {
  update,
  remove,
  add,
}
