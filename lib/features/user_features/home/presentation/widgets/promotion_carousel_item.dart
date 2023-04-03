import 'package:flutter/material.dart';
import '../../../../../common/widgets/app_image_loader/app_image_loader.dart';
import '../../../../../core/app_models/promotions/promotion_with_course_data.dart';
import '../../../../../generated/l10n.dart';

class PromotionCarouselItem extends StatelessWidget {
  final PromotionWithCourseData promotionData;
  const PromotionCarouselItem({
    required this.promotionData,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? url;
    if (S.of(context).language == 'en') {
      url = promotionData.promotion.engImageUrl;
    } else {
      url = promotionData.promotion.plImageUrl;
    }

    return Padding(
      padding: const EdgeInsets.all(2),
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 10,
        child: AppImageLoader(
          imageUrl: url,
        ),
      ),
    );
  }
}
