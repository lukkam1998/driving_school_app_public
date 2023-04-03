import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/app_models/courses/user_course.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../injection_container.dart';
import '../buy_more_hours_cubit/buy_more_hours_cubit.dart';

class BuyMoreHoursDialog extends StatelessWidget {
  final UserCourse userCourse;
  final int hourPrice;
  BuyMoreHoursDialog({
    required this.hourPrice,
    required this.userCourse,
    super.key,
  });

  ValueNotifier<int> hoursValue = ValueNotifier(0);
  ValueNotifier<int> priceValue = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<BuyMoreHoursCubit>(),
      child: AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              S.of(context).choose_hours_amount_to_pucharse,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    if (hoursValue.value == 0) {
                      return;
                    }
                    hoursValue.value--;
                    priceValue.value = priceValue.value - hourPrice;
                  },
                  icon: const Icon(
                    Icons.remove,
                  ),
                ),
                ValueListenableBuilder(
                  valueListenable: hoursValue,
                  builder: (context, value, child) {
                    return Text(
                      '$value',
                      style: Theme.of(context).textTheme.bodyLarge,
                    );
                  },
                ),
                IconButton(
                  onPressed: () {
                    int maxHoursVal = 15;
                    final boughtHours = userCourse.boughtHours?.toInt();
                    if (boughtHours != null) {
                      maxHoursVal -= boughtHours;
                    }
                    if (hoursValue.value == maxHoursVal) {
                      return;
                    }
                    hoursValue.value++;
                    priceValue.value = priceValue.value + hourPrice;
                  },
                  icon: const Icon(
                    Icons.add,
                  ),
                ),
              ],
            ),
            ValueListenableBuilder(
              valueListenable: priceValue,
              builder: (context, value, child) {
                return Text(
                  '${S.of(context).price} $value PLN',
                  style: Theme.of(context).textTheme.bodyLarge,
                );
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.router.pop();
            },
            child: Text(
              S.of(context).cancel,
            ),
          ),
          BlocConsumer<BuyMoreHoursCubit, BuyMoreHoursState>(
            listener: (context, state) {
              state.whenOrNull(
                success: () {
                  context.router.pop(true);
                },
              );
            },
            builder: (context, state) {
              state.whenOrNull(
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              );
              return TextButton(
                onPressed: () {
                  if (hoursValue.value == 0 || priceValue.value == 0) {
                    return;
                  }
                  context.read<BuyMoreHoursCubit>().buyMoreHours(
                        userCourse,
                        hoursValue.value,
                        priceValue.value,
                      );
                },
                child: Text(
                  S.of(context).confirm,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
