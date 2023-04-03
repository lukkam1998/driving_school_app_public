import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../../common/widgets/text_fields/main_app_textfield.dart';
import '../../../../../generated/l10n.dart';
import '../../../../core_features/login/presentation/widgets/app_button.dart';
import '../../domain/entities/car.dart';
import '../bloc/cars_bloc.dart';

// TODO REFACTOR

class AddCarDialog extends StatefulWidget {
  final Car? car;
  const AddCarDialog({
    Key? key,
    this.car,
  }) : super(key: key);

  @override
  State<AddCarDialog> createState() => _AddCarDialogState();
}

class _AddCarDialogState extends State<AddCarDialog> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController carMarkController = TextEditingController();
  final TextEditingController carModelController = TextEditingController();
  final TextEditingController carRegistrationController =
      TextEditingController();
  final TextEditingController kilometersDoneController =
      TextEditingController();
  DateTime? oilChangeDate;
  DateTime? lastCarReviewDate;
  DateTime? buyDate;
  @override
  void initState() {
    super.initState();
    if (widget.car != null) {
      carMarkController.text = widget.car!.mark;
      carModelController.text = widget.car!.model;
      carRegistrationController.text = widget.car!.carRegistration;
      oilChangeDate = widget.car!.lastOilChange;
      lastCarReviewDate = widget.car!.lastCarReview;
      kilometersDoneController.text = widget.car!.kilometersDone.toString();
      buyDate = widget.car!.pucharseDate;
    }
  }

  @override
  void dispose() {
    carMarkController.dispose();
    carModelController.dispose();
    carRegistrationController.dispose();
    kilometersDoneController.dispose();
    super.dispose();
  }

  void validate(BuildContext context) {
    final isValid = _form.currentState?.validate();
    if (!isValid!) {
      return;
    }

    if (oilChangeDate == null || lastCarReviewDate == null || buyDate == null) {
      return;
    }
    Car car = widget.car != null
        ? widget.car!.copyWith(
            mark: carMarkController.text,
            model: carModelController.text,
            carRegistration: carRegistrationController.text,
            lastOilChange: oilChangeDate!,
            lastCarReview: lastCarReviewDate!,
            kilometersDone: int.parse(kilometersDoneController.text),
            pucharseDate: buyDate!,
          )
        : Car(
            carId: '',
            mark: carMarkController.text,
            model: carModelController.text,
            carRegistration: carRegistrationController.text,
            lastOilChange: oilChangeDate!,
            lastCarReview: lastCarReviewDate!,
            kilometersDone: int.parse(kilometersDoneController.text),
            pucharseDate: buyDate!,
          );

    if (widget.car != null) {
      context.read<CarsBloc>().add(ModifyCarEvent(car));
    } else {
      context.read<CarsBloc>().add(AddCarEvent(car));
    }
  }

  void _pickDateDialog(String whichDate) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
                primary: Theme.of(context)
                    .colorScheme
                    .secondary, // header background color
                onPrimary:
                    Theme.of(context).colorScheme.primary, // header text color
                onSurface:
                    Theme.of(context).colorScheme.onPrimary, // body text color
                shadow: Theme.of(context).colorScheme.secondary),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: Theme.of(context)
                    .colorScheme
                    .secondary, // button text color
              ),
            ),
          ),
          child: child!,
        );
      },
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      if (whichDate == 'oil') {
        oilChangeDate = pickedDate;
      } else if (whichDate == 'review') {
        lastCarReviewDate = pickedDate;
      } else {
        buyDate = pickedDate;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CarsBloc, CarsState>(
      listener: (context, state) {
        if (state.actionSucced) {
          context.router.pop(true);
        }
      },
      builder: (context, state) {
        return Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Material(
                  color: Colors.transparent,
                  child: Form(
                    key: _form,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 12),
                          MainAppTextField(
                            fillColor: Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withOpacity(0.7),
                            controller: carMarkController,
                            hintText: S.of(context).car_mark,
                            textInputAction: TextInputAction.next,
                            validator: (p0) {
                              if (p0 == '') {
                                return S.of(context).empty_string_value;
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 8),
                          MainAppTextField(
                            fillColor: Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withOpacity(0.7),
                            controller: carModelController,
                            hintText: S.of(context).car_model,
                            textInputAction: TextInputAction.next,
                            validator: (p0) {
                              if (p0 == '') {
                                return S.of(context).empty_string_value;
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 8),
                          MainAppTextField(
                            fillColor: Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withOpacity(0.7),
                            controller: carRegistrationController,
                            hintText: S.of(context).car_registration,
                            textInputAction: TextInputAction.next,
                            validator: (p0) {
                              if (p0 == '') {
                                return S.of(context).empty_string_value;
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 8),
                          MainAppTextField(
                            fillColor: Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withOpacity(0.7),
                            controller: kilometersDoneController,
                            hintText: 'Kilometers done',
                            textInputType: TextInputType.number,
                            textInputAction: TextInputAction.done,
                            textInputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            validator: (p0) {
                              return null;
                            },
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Divider(),
                              Flexible(
                                fit: FlexFit.tight,
                                child: Text(
                                  S.of(context).last_oil_change_date,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  _pickDateDialog('oil');
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Theme.of(context)
                                      .colorScheme
                                      .onSecondary
                                      .withOpacity(0.6),
                                ),
                                child: Text(
                                  oilChangeDate == null
                                      ? S.of(context).pick_date
                                      : DateFormat('dd.MM.yyyy')
                                          .format(oilChangeDate!),
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              const Divider(),
                              Flexible(
                                fit: FlexFit.tight,
                                child: Text(
                                  S.of(context).last_car_review,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  _pickDateDialog('review');
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Theme.of(context)
                                      .colorScheme
                                      .onSecondary
                                      .withOpacity(0.6),
                                ),
                                child: Text(
                                  lastCarReviewDate == null
                                      ? S.of(context).pick_date
                                      : DateFormat('dd.MM.yyyy')
                                          .format(lastCarReviewDate!),
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              const Divider(),
                              Flexible(
                                fit: FlexFit.tight,
                                child: Text(
                                  S.of(context).date_of_pucharse,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  _pickDateDialog('');
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Theme.of(context)
                                      .colorScheme
                                      .onSecondary
                                      .withOpacity(0.6),
                                ),
                                child: Text(
                                  buyDate == null
                                      ? S.of(context).pick_date
                                      : DateFormat('dd.MM.yyyy')
                                          .format(buyDate!),
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          BlocBuilder<CarsBloc, CarsState>(
                            builder: (context, state) {
                              return AppButton(
                                buttonText: S.of(context).confirm,
                                onPressed: () {
                                  validate(context);
                                },
                                isLoading: state.isLoading,
                              );
                            },
                          ),
                          const SizedBox(height: 12),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: GestureDetector(
                onTap: () {
                  context.router.pop();
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  child: Icon(
                    Icons.close,
                    size: 40,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
