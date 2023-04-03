import 'dart:io';
import 'package:card_swiper/card_swiper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:managing_driving_school_app/common/snackbar/app_snackbar.dart';
import 'package:managing_driving_school_app/common/widgets/text_fields/main_app_textfield.dart';
import 'package:managing_driving_school_app/core/app_models/promotion_action_result.dart';
import 'package:managing_driving_school_app/core/app_models/promotions/edit_promotion_data.dart';
import 'package:managing_driving_school_app/core/app_models/promotions/promotion_add_data.dart';
import 'package:managing_driving_school_app/core/textfields_validators/textfield_validator.dart';
import 'package:managing_driving_school_app/features/core_features/login/presentation/widgets/app_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../common/widgets/page_template/page_template.dart';
import '../../../../../core/app_models/courses/course.dart';
import '../../../../../core/app_models/promotions/promotion.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../injection_container.dart';
import '../manage_courses_blc/manage_courses_bloc.dart';
import '../promotion_manager_bloc/promotions_manager_bloc.dart';

// TODO: Try to refactor

class AddPromotionPage extends StatefulWidget {
  final Promotion? promotion;
  const AddPromotionPage({this.promotion, super.key});

  @override
  State<AddPromotionPage> createState() => _AddPromotionPageState();
}

class _AddPromotionPageState extends State<AddPromotionPage> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController promotionDescriptionController =
      TextEditingController();
  final TextEditingController promotionValueController =
      TextEditingController();
  final ImagePicker _picker = ImagePicker();
  final TextFieldValidator _validator = TextFieldValidator();
  File? engImage;
  File? plImage;
  ValueNotifier<bool> isEngImagePicked = ValueNotifier(false);
  ValueNotifier<bool> isPlImagePicked = ValueNotifier(false);
  ValueNotifier<DateTime?> expiryDateNotifier = ValueNotifier(null);

  List<Course> courses = [];
  int choosenIndex = 0;

  @override
  void initState() {
    if (widget.promotion != null) {
      promotionDescriptionController.text = widget.promotion!.description;
      promotionValueController.text =
          widget.promotion!.promotionValue.toString();
      expiryDateNotifier.value = DateTime.fromMillisecondsSinceEpoch(
        widget.promotion!.expiryDate.millisecondsSinceEpoch,
      );
    }
    super.initState();
  }

  @override
  void dispose() {
    promotionValueController.dispose();
    promotionDescriptionController.dispose();
    super.dispose();
  }

  void _validate(BuildContext context) {
    final isValid = _form.currentState?.validate();
    if (!isValid!) return;
    if (widget.promotion != null) {
      // Modify instead existing promotion instead of adding new one
      EditPromotionData editData = EditPromotionData(
        promotionId: widget.promotion!.promotionId!,
        courseId: widget.promotion!.courseId,
        promotionValue: double.parse(promotionValueController.text),
        description: promotionDescriptionController.text,
        expiryDate: Timestamp.fromDate(expiryDateNotifier.value!),
        oldEngImagePath: widget.promotion!.engImageUrl,
        oldPlImagePath: widget.promotion!.plImageUrl,
      );
      context.read<PromotionsManagerBloc>().add(EditPromotionEvent(editData));
      return;
    }

    if (engImage == null ||
        plImage == null ||
        expiryDateNotifier.value == null) {
      return;
    }

    AddPromotionData promotion = AddPromotionData(
      courseId: courses[choosenIndex].id!,
      description: promotionDescriptionController.text,
      engImage: engImage!,
      plImage: plImage!,
      expiryDate: Timestamp.fromDate(expiryDateNotifier.value!),
      promotionValue: double.parse(promotionValueController.text),
    );

    context.read<PromotionsManagerBloc>().add(AddPromotionEvent(promotion));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              sl<ManageCoursesBloc>()..add(const LoadCoursesEvent()),
        ),
        BlocProvider(
          create: (context) => sl<PromotionsManagerBloc>(),
        ),
      ],
      child: BlocBuilder<ManageCoursesBloc, ManageCoursesState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.primary,
            appBar: AppBar(
              elevation: 0,
              title: Text(
                widget.promotion != null
                    ? '${S.of(context).modify}'
                    : '${S.of(context).add_promotion}',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            body: Form(
              key: _form,
              child: PageTemplate(
                body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * (4 / 5),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(height: 12),
                              BlocBuilder<ManageCoursesBloc,
                                  ManageCoursesState>(
                                builder: (context, state) {
                                  if (state.isLoading) {
                                    return Container(
                                      height: 100,
                                      child: const Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    );
                                  }
                                  if (widget.promotion != null) {
                                    courses = state.courses
                                        .where(
                                          (element) =>
                                              element.id ==
                                              widget.promotion!.courseId,
                                        )
                                        .toList();
                                  } else {
                                    courses = state.courses
                                        .where(
                                          (element) => element.isAvailable,
                                        )
                                        .toList();
                                  }

                                  return Container(
                                    height: 80,
                                    child: Swiper(
                                      itemCount: courses.length,
                                      itemBuilder: (context, index) {
                                        choosenIndex = index;
                                        return Align(
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            '${S.of(context).category} ${courses[index].category}',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineLarge,
                                          ),
                                        );
                                      },
                                      pagination: SwiperCustomPagination(
                                        builder: (
                                          BuildContext context,
                                          SwiperPluginConfig config,
                                        ) {
                                          return Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 12),
                                              child: AnimatedSmoothIndicator(
                                                activeIndex: config.activeIndex,
                                                count: config.itemCount,
                                                effect: ExpandingDotsEffect(
                                                  activeDotColor:
                                                      Theme.of(context)
                                                          .colorScheme
                                                          .secondary,
                                                  dotColor: Theme.of(context)
                                                      .colorScheme
                                                      .onPrimary,
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                      control: SwiperControl(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(height: 12),
                              MainAppTextField(
                                hintText: S.of(context).description,
                                controller: promotionDescriptionController,
                                validator: (str) {
                                  return _validator.validateNotEmptyString(str);
                                },
                                textInputAction: TextInputAction.next,
                                fillColor: Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(0.7),
                                maxLines: 3,
                              ),
                              const SizedBox(height: 12),
                              MainAppTextField(
                                hintText: S.of(context).amount_of_promotion,
                                controller: promotionValueController,
                                validator: (str) {
                                  return _validator.validateNumber(str);
                                },
                                textInputType: TextInputType.number,
                                textInputAction: TextInputAction.done,
                                fillColor: Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(0.7),
                                maxLines: 1,
                              ),
                              const SizedBox(height: 12),
                              ValueListenableBuilder(
                                builder: (context, value, child) {
                                  return AppButton(
                                    buttonText: value == null
                                        ? S.of(context).choose_expiry_date
                                        : '${S.of(context).expiry_date} ${DateFormat('dd.MM.yyyy').format(value)}',
                                    onPressed: () {
                                      _pickDateDialog();
                                    },
                                  );
                                },
                                valueListenable: expiryDateNotifier,
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  AppButton(
                                    width: MediaQuery.of(context).size.width *
                                        (3 / 4),
                                    height: 64,
                                    paddingValue: 0,
                                    onPressed: () {
                                      _pickImage(context, false);
                                    },
                                    buttonText: widget.promotion != null
                                        ? S
                                            .of(context)
                                            .change_eng_promotion_image
                                        : S
                                            .of(context)
                                            .choose_eng_promotion_image,
                                  ),
                                  const Spacer(),
                                  ValueListenableBuilder(
                                    valueListenable: isEngImagePicked,
                                    builder: (context, value, child) {
                                      return Icon(
                                        value ? Icons.check : Icons.close,
                                      );
                                    },
                                  ),
                                  const SizedBox(width: 12),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  AppButton(
                                    width: MediaQuery.of(context).size.width *
                                        (3 / 4),
                                    height: 64,
                                    paddingValue: 0,
                                    onPressed: () {
                                      _pickImage(context, true);
                                    },
                                    buttonText: widget.promotion != null
                                        ? S
                                            .of(context)
                                            .change_pl_promotion_image
                                        : S
                                            .of(context)
                                            .choose_pl_promotion_image,
                                  ),
                                  const Spacer(),
                                  ValueListenableBuilder(
                                    valueListenable: isPlImagePicked,
                                    builder: (context, value, child) {
                                      return Icon(
                                        value ? Icons.check : Icons.close,
                                      );
                                    },
                                  ),
                                  const SizedBox(width: 12),
                                ],
                              ),
                              const Spacer(),
                              BlocConsumer<PromotionsManagerBloc,
                                  PromotionsManagerState>(
                                listener: (context, state) {
                                  if (state.actionResult != null) {
                                    AppSnackbar.showSnackbar(
                                      context,
                                      '${state.actionResult?.actionDescription}',
                                    );

                                    if (state.actionResult!.doesSucced &&
                                        state.actionResult
                                                ?.promotionActionType ==
                                            PromotionActionType.add) {
                                      _clearData();
                                    }
                                  }
                                },
                                builder: (context, state) {
                                  return AppButton(
                                    isLoading: state.isLoading,
                                    buttonText: S.of(context).confirm,
                                    onPressed: () {
                                      _validate(context);
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _clearData() {
    promotionDescriptionController.clear();
    promotionValueController.clear();
    isEngImagePicked.value = false;
    isPlImagePicked.value = false;
    plImage = null;
    engImage == null;
    expiryDateNotifier.value = null;
  }

  void _pickImage(BuildContext context, bool isPolishVersion) async {
    await _picker.pickImage(source: ImageSource.gallery).then(
      (value) {
        if (value == null) {
          return;
        }
        if (isPolishVersion) {
          plImage = File(value.path);
          isPlImagePicked.value = true;
        } else {
          engImage = File(value.path);
          isEngImagePicked.value = true;
        }
      },
    );
  }

  void _pickDateDialog() {
    showDatePicker(
      lastDate: DateTime(DateTime.now().year + 10),
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
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
      expiryDateNotifier.value = pickedDate;
    });
  }
}
