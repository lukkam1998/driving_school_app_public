import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:managing_driving_school_app/core/app_router/app_router.dart';

import '../../../../../core/app_models/promotions/promotion.dart';
import '../../../../../generated/l10n.dart';
import '../promotion_manager_bloc/promotions_manager_bloc.dart';

class PromotionInfoContainer extends StatelessWidget {
  final Promotion promotion;

  const PromotionInfoContainer({
    required this.promotion,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background.withOpacity(0.9),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).description,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(fontSize: 16),
              ),
              Text(promotion.description),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(S.of(context).value),
              Text('${promotion.promotionValue} %'),
            ],
          ),
          Material(
            color: Colors.transparent,
            child: IconButton(
              splashRadius: 24,
              onPressed: () {
                context.router
                    .push(AddPromotionRouter(promotion: promotion))
                    .then((value) {
                  context
                      .read<PromotionsManagerBloc>()
                      .add(const GetPromotionsEvent());
                });
              },
              icon: const Icon(Icons.arrow_forward),
            ),
          )
        ],
      ),
    );
  }
}
