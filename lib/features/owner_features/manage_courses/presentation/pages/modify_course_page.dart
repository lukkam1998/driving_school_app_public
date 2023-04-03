import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:managing_driving_school_app/common/snackbar/app_snackbar.dart';
import '../../../../../common/widgets/page_template/page_template.dart';
import '../../../../../common/widgets/text_fields/main_app_textfield.dart';
import '../../../../../core/app_models/courses/course.dart';

import '../../../../../core/textfields_validators/textfield_validator.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../injection_container.dart';
import '../../../../core_features/login/presentation/widgets/app_button.dart';
import '../modify_course_cubit/modify_course_cubit.dart';

class ModifyCoursePage extends StatefulWidget {
  final Course course;
  const ModifyCoursePage({required this.course, super.key});

  @override
  State<ModifyCoursePage> createState() => _ModifyCoursePageState();
}

class _ModifyCoursePageState extends State<ModifyCoursePage> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController courseNameController = TextEditingController();
  final TextEditingController courseAgeController = TextEditingController();
  final TextEditingController coursePriceController = TextEditingController();
  final TextEditingController coursedDurationController =
      TextEditingController();
  final TextFieldValidator validator = TextFieldValidator();
  ValueNotifier<bool> isAvailable = ValueNotifier(false);

  @override
  void dispose() {
    courseNameController.dispose();
    courseAgeController.dispose();
    coursePriceController.dispose();
    coursedDurationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    courseNameController.text = widget.course.category;
    courseAgeController.text = widget.course.minAge;
    coursePriceController.text = widget.course.price;
    coursedDurationController.text = widget.course.duration;
    isAvailable = ValueNotifier(widget.course.isAvailable);
  }

  void validateForm(BuildContext context) {
    final isValid = _form.currentState?.validate();
    if (!isValid!) {
      return;
    }

    Course course = Course(
      id: widget.course.id,
      category: courseNameController.text,
      duration: coursedDurationController.text,
      minAge: courseAgeController.text,
      price: coursePriceController.text,
      isAvailable: isAvailable.value,
    );

    context.read<ModifyCourseCubit>().modifyCourse(course);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ModifyCourseCubit>(),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            '${S.of(context).category} ${widget.course.category}',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        body: Form(
          key: _form,
          child: PageTemplate(
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  Expanded(
                    flex: 2,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          MainAppTextField(
                            isHintVisibleOnBorder: true,
                            hintText: S.of(context).category,
                            controller: courseNameController,
                            validator: (p0) {
                              return validator.validateNotEmptyString(p0);
                            },
                            textInputAction: TextInputAction.next,
                          ),
                          const SizedBox(height: 8),
                          MainAppTextField(
                            isHintVisibleOnBorder: true,
                            hintText: S.of(context).price,
                            controller: coursePriceController,
                            validator: (p0) {
                              return validator.validateNotEmptyString(p0);
                            },
                            textInputAction: TextInputAction.next,
                          ),
                          const SizedBox(height: 8),
                          MainAppTextField(
                            isHintVisibleOnBorder: true,
                            hintText: S.of(context).min_age,
                            controller: courseAgeController,
                            validator: (p0) {
                              return validator.validateNotEmptyString(p0);
                            },
                            textInputAction: TextInputAction.next,
                          ),
                          const SizedBox(height: 8),
                          MainAppTextField(
                            isHintVisibleOnBorder: true,
                            hintText: S.of(context).duration,
                            controller: coursedDurationController,
                            validator: (p0) {
                              return validator.validateNotEmptyString(p0);
                            },
                            textInputAction: TextInputAction.done,
                          ),
                          const SizedBox(height: 16),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  S.of(context).change_availability_of_course,
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                                ValueListenableBuilder(
                                  valueListenable: isAvailable,
                                  builder: (context, value, child) {
                                    return Switch(
                                      value: isAvailable.value,
                                      onChanged: (val) {
                                        isAvailable.value = val;
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
                  BlocConsumer<ModifyCourseCubit, ModifyCourseState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        failure: (isLoading) {
                          AppSnackbar.showSnackbar(
                            context,
                            S.of(context).modify_course_failed,
                          );
                        },
                        success: (isLoading) {
                          AppSnackbar.showSnackbar(
                            context,
                            S.of(context).modify_succed,
                          );
                          context.router.pop(true);
                        },
                      );
                    },
                    builder: (context, state) {
                      return AppButton(
                        buttonText: S.of(context).modify,
                        isLoading: state.isLoading,
                        onPressed: () {
                          validateForm(context);
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
