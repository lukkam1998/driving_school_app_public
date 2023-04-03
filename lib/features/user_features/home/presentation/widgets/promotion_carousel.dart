import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:managing_driving_school_app/features/user_features/home/presentation/widgets/promotion_carousel_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../generated/l10n.dart';
import '../home_bloc/home_bloc.dart';

class PromotionCarousel extends StatelessWidget {
  const PromotionCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.hasError) {
          Center(
            child: Text(
              S.of(context).we_couldnt_load_promotions_swipe_to_try_again,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          );
        }
        return state.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : state.promotions.isEmpty
                ? Center(
                    child: Text(
                      S.of(context).no_promotions_running,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  )
                : Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return PromotionCarouselItem(
                        promotionData: state.promotions[index],
                      );
                    },
                    itemCount: state.promotions.length,
                    pagination: SwiperCustomPagination(
                      builder:
                          (BuildContext context, SwiperPluginConfig config) {
                        return Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: AnimatedSmoothIndicator(
                              activeIndex: config.activeIndex,
                              count: config.itemCount,
                              effect: ExpandingDotsEffect(
                                  activeDotColor: colorScheme.secondary,
                                  dotColor: colorScheme.onPrimary),
                            ),
                          ),
                        );
                      },
                    ),
                  );
      },
    );
  }
}
