import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:managing_driving_school_app/common/snackbar/app_snackbar.dart';
import '../../../../../common/widgets/page_template/page_template.dart';
import '../../../../../common/widgets/text_fields/main_app_textfield.dart';
import '../../../../../core/app_models/courses/course.dart';
import '../../../../../core/textfields_validators/textfield_validator.dart';
import '../../../../core_features/login/presentation/widgets/app_button.dart';
import '../add_course_bloc/add_course_bloc.dart';

import '../../../../../generated/l10n.dart';
import '../../../../../injection_container.dart';

class AddCoursePage extends StatefulWidget {
  const AddCoursePage({super.key});

  @override
  State<AddCoursePage> createState() => _AddCoursePageState();
}

class _AddCoursePageState extends State<AddCoursePage> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController courseNameController = TextEditingController();
  final TextEditingController courseAgeController = TextEditingController();
  final TextEditingController coursePriceController = TextEditingController();
  final TextEditingController coursedDurationController =
      TextEditingController();
  final TextFieldValidator validator = TextFieldValidator();

  @override
  void dispose() {
    courseNameController.dispose();
    courseAgeController.dispose();
    coursePriceController.dispose();
    coursedDurationController.dispose();
    super.dispose();
  }

  void validateForm(BuildContext context) {
    final isValid = _form.currentState?.validate();
    if (!isValid!) {
      return;
    }

    Course course = Course(
      id: '',
      category: courseNameController.text,
      duration: coursedDurationController.text,
      minAge: courseAgeController.text,
      price: coursePriceController.text,
      isAvailable: true,
    );

    context.read<AddCourseBloc>().add(AddNewCourseEvent(course));
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocProvider(
      create: (context) => sl<AddCourseBloc>(),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            S.of(context).your_courses,
            style: textTheme.labelMedium,
          ),
        ),
        body: PageTemplate(
          body: Form(
            key: _form,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  MainAppTextField(
                    hintText: S.of(context).category,
                    controller: courseNameController,
                    validator: (str) {
                      return validator.validateNotEmptyString(str);
                    },
                    textInputAction: TextInputAction.next,
                    fillColor: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(height: 12),
                  MainAppTextField(
                    hintText: S.of(context).required_age,
                    controller: courseAgeController,
                    validator: (str) {
                      return validator.validateNotEmptyString(str);
                    },
                    textInputAction: TextInputAction.next,
                    fillColor: Theme.of(context).colorScheme.primary,
                    textInputType: TextInputType.number,
                  ),
                  const SizedBox(height: 12),
                  MainAppTextField(
                    hintText: S.of(context).price,
                    controller: coursePriceController,
                    validator: (str) {
                      return validator.validateNotEmptyString(str);
                    },
                    textInputAction: TextInputAction.next,
                    fillColor: Theme.of(context).colorScheme.primary,
                    textInputType: TextInputType.number,
                  ),
                  const SizedBox(height: 12),
                  MainAppTextField(
                    hintText: S.of(context).duration,
                    controller: coursedDurationController,
                    validator: (str) {
                      return validator.validateNotEmptyString(str);
                    },
                    textInputAction: TextInputAction.done,
                    fillColor: Theme.of(context).colorScheme.primary,
                    textInputType: TextInputType.number,
                  ),
                  const Spacer(),
                  BlocConsumer<AddCourseBloc, AddCourseState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        failure: (isLoading) {
                          AppSnackbar.showSnackbar(
                            context,
                            S.of(context).adding_course_failed,
                          );
                        },
                        success: (isLoading) {
                          AppSnackbar.showSnackbar(
                            context,
                            S.of(context).adding_succed,
                          );

                          context.router.pop();
                        },
                      );
                    },
                    builder: (context, state) {
                      return AppButton(
                        isLoading: state.isLoading,
                        buttonText: S.of(context).add,
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
