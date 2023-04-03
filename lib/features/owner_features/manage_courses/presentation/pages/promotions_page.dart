import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:managing_driving_school_app/core/app_router/app_router.dart';
import '../../../../../common/widgets/page_template/page_template.dart';

import '../../../../../generated/l10n.dart';
import '../../../../../injection_container.dart';
import '../promotion_manager_bloc/promotions_manager_bloc.dart';
import '../widgets/promotion_info_container.dart';

class PromotionsPage extends StatefulWidget {
  const PromotionsPage({super.key});

  @override
  State<PromotionsPage> createState() => _PromotionsPageState();
}

class _PromotionsPageState extends State<PromotionsPage> {
  ValueNotifier<bool> showingExpiredPromotions = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<PromotionsManagerBloc>()..add(const GetPromotionsEvent()),
      child: BlocBuilder<PromotionsManagerBloc, PromotionsManagerState>(
        builder: (context, state) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                context.router.push(AddPromotionRouter()).then((value) {
                  context
                      .read<PromotionsManagerBloc>()
                      .add(const GetPromotionsEvent());
                });
              },
              child: const Icon(Icons.add),
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
            appBar: AppBar(
              elevation: 0,
              title: Text(
                S.of(context).promotions,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            body: PageTemplate(
              body: BlocBuilder<PromotionsManagerBloc, PromotionsManagerState>(
                builder: (context, state) {
                  return ValueListenableBuilder(
                    valueListenable: showingExpiredPromotions,
                    builder: (context, value, child) => ListView.builder(
                      itemCount: showingExpiredPromotions.value
                          ? state.expiredPromotions.length + 1
                          : state.runningPromotions.length + 1,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(S.of(context).show_expired_promotions),
                              Switch(
                                value: showingExpiredPromotions.value,
                                onChanged: (value) {
                                  showingExpiredPromotions.value = value;
                                },
                              ),
                            ],
                          );
                        }
                        return PromotionInfoContainer(
                          promotion: showingExpiredPromotions.value
                              ? state.expiredPromotions[index - 1]
                              : state.runningPromotions[index - 1],
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
