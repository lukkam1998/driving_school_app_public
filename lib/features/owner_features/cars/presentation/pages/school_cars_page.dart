import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../../../common/widgets/drawer/owner_drawer.dart';
import '../../../../../common/widgets/page_template/page_template.dart';
import '../../../../core_features/login/presentation/widgets/app_button.dart';

import '../../../../../generated/l10n.dart';
import '../../domain/entities/car.dart';
import '../bloc/cars_bloc.dart';
import '../widgets/add_car_dialog.dart';

class SchoolCarsPage extends StatefulWidget {
  const SchoolCarsPage({super.key});

  @override
  State<SchoolCarsPage> createState() => _SchoolCarsPageState();
}

class _SchoolCarsPageState extends State<SchoolCarsPage> {
  @override
  void initState() {
    super.initState();
    context.read<CarsBloc>().add(const GetCarsEvent());
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        heroTag: 'fabAddCar',
        onPressed: () {
          _showAddCarDialog(context, null);
        },
        child: const Icon(Icons.add),
      ),
      backgroundColor: colorScheme.primary,
      drawer: const OwnerDrawer(),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          S.of(context).cars,
          style: textTheme.labelMedium,
        ),
      ),
      body: PageTemplate(
        body: BlocBuilder<CarsBloc, CarsState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state.cars.isEmpty) {
              return const Center(
                child: Text('You don\'t have any cars add one'),
              );
            }

            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index) {
                return Stack(children: [
                  Card(
                    clipBehavior: Clip.hardEdge,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${state.cars[index].mark} ${state.cars[index].model} ${state.cars[index].carRegistration}', // ignore: lines_longer_than_80_chars
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(fontSize: 22),
                          ),
                          Text(
                            '${S.of(context).km_done}: ${state.cars[index].kilometersDone} km', // ignore: lines_longer_than_80_chars
                          ),
                          Text(
                            '${S.of(context).last_oil_change}: ${DateFormat('dd/MM/yyyy').format(state.cars[index].lastOilChange)}', // ignore: lines_longer_than_80_chars
                          ),
                          Text(
                            '${S.of(context).last_review}: ${DateFormat('dd/MM/yyyy').format( // ignore: lines_longer_than_80_chars
                                state.cars[index].lastCarReview)}',
                          ),
                          Text(
                            '${S.of(context).pucharse_date}: ${DateFormat('dd/MM/yyyy').format(state.cars[index].pucharseDate)}', // ignore: lines_longer_than_80_chars
                          ),
                          AppButton(
                            onPressed: () {
                              _showAddCarDialog(context, state.cars[index]);
                            },
                            buttonText: S.of(context).update,
                            height: 40,
                            paddingValue: 0,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: IconButton(
                      onPressed: () {
                        _showRemoveConfirmationDialog(
                          context,
                          state.cars[index],
                        );
                      },
                      icon: const Icon(Icons.close),
                    ),
                  ),
                ]);
              },
              itemCount: state.cars.length,
            );
          },
        ),
      ),
    );
  }

  Future<dynamic> _showRemoveConfirmationDialog(
    BuildContext ctx,
    Car car,
  ) {
    return showDialog(
      context: ctx,
      builder: (context) {
        return AlertDialog(
          content: BlocConsumer<CarsBloc, CarsState>(
            listener: (context, state) {
              if (state.actionSucced) {
                context.router.pop(true);
              }
            },
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(S.of(context).do_you_want_remove_car),
                  Text('${car.mark} ${car.model}'),
                ],
              );
            },
          ),
          actions: [
            TextButton(
              onPressed: () => context.router.pop(),
              child: Text(
                S.of(context).cancel,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            TextButton(
              onPressed: () {
                context.read<CarsBloc>().add(RemoveCarEvent(car));
              },
              child: Text(
                S.of(context).confirm,
              ),
            ),
          ],
        );
      },
    ).then((value) {
      if (value == true) {
        ctx.read<CarsBloc>().add(const GetCarsEvent());
      }
    });
  }

  Future<dynamic> _showAddCarDialog(
    BuildContext ctx,
    Car? car,
  ) {
    return showDialog(
      context: ctx,
      barrierDismissible: false,
      builder: (context) {
        return AddCarDialog(car: car);
      },
    ).then((value) {
      if (value == true) {
        ctx.read<CarsBloc>().add(const GetCarsEvent());
      }
    });
  }
}
