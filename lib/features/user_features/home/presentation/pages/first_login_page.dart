
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:managing_driving_school_app/features/user_features/home/presentation/widgets/first_login_avatar_picker.dart';
import '../../../../../core/services/user_data_service/user_data_service_cubit/user_data_service_cubit.dart';
import '../../../../../common/snackbar/app_snackbar.dart';
import '../../../../../common/widgets/page_template/page_template.dart';
import '../../../../../common/widgets/text_fields/main_app_textfield.dart';
import '../../../../../core/app_router/app_router.dart';
import '../../../../../core/textfields_validators/textfield_validator.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../injection_container.dart';
import '../../../../core_features/login/presentation/widgets/app_button.dart';
import '../first_login_bloc/first_login_bloc.dart';

class FirstLoginPage extends StatefulWidget {
  const FirstLoginPage({super.key});

  @override
  State<FirstLoginPage> createState() => _FirstLoginPageState();
}

class _FirstLoginPageState extends State<FirstLoginPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextFieldValidator validator = sl<TextFieldValidator>();
  DateTime birthDate = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _surnameController.dispose();
    super.dispose();
  }

  void _validateForm(BuildContext context) {
    final isValid = _form.currentState?.validate();
    if (!isValid!) {
      return;
    }
    final name = _nameController.text;
    final surname = _surnameController.text;
    final userBirthDate = birthDate;

    context.read<FirstLoginBloc>().add(
          UpdateUserDataEvent(
            name: name,
            surname: surname,
            userBirthDate: userBirthDate,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider(
      create: (context) => sl<FirstLoginBloc>(),
      child: Scaffold(
        body: SafeArea(
          child: PageTemplate(
            body: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _form,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).welcome,
                        style: theme.textTheme.headlineLarge
                            ?.copyWith(fontSize: 32),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        S.of(context).finish_configuration,
                        style:
                            theme.textTheme.labelLarge?.copyWith(fontSize: 18),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BlocBuilder<FirstLoginBloc, FirstLoginState>(
                            builder: (context, state) {
                              return Container(
                                clipBehavior: Clip.hardEdge,
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: theme.colorScheme.secondary
                                      .withOpacity(0.2),
                                ),
                                child: state.photo == null
                                    ? const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Center(
                                          child: Icon(
                                            Icons.person,
                                            size: 40,
                                          ),
                                        ),
                                      )
                                    : Image.file(
                                        state.photo!,
                                        fit: BoxFit.cover,
                                      ),
                              );
                            },
                          ),
                          FirstLoginAvatarPicker(
                            buttonText: S.of(context).add_avatar,
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Text(
                        S.of(context).birthdate,
                        style:
                            theme.textTheme.labelLarge?.copyWith(fontSize: 16),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        height: 76,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.secondary.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.date,
                          initialDateTime: DateTime(2004),
                          maximumYear: 2020,
                          minimumYear: 1920,
                          onDateTimeChanged: (DateTime newDateTime) {
                            birthDate = newDateTime;
                          },
                        ),
                      ),
                      const SizedBox(height: 24),
                      MainAppTextField(
                        controller: _nameController,
                        hintText: S.of(context).name,
                        validator: (value) {
                          return validator.validateName(value);
                        },
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(height: 12),
                      MainAppTextField(
                        controller: _surnameController,
                        hintText: S.of(context).surname,
                        validator: (value) {
                          return validator.validateName(value);
                        },
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(height: 80),
                      BlocBuilder<UserDataServiceCubit, UserDataServiceState>(
                        builder: (context, userDataServiceState) {
                          return BlocConsumer<FirstLoginBloc, FirstLoginState>(
                            listener: (context, state) {
                              if (state.hasError) {
                                AppSnackbar.showSnackbar(
                                  context,
                                  'Something went wrong try again',
                                );
                              }
                              if (state.isUpdated) {
                                AppSnackbar.showSnackbar(
                                  context,
                                  S.of(context).successful_update,
                                );
                                Future.delayed(const Duration(seconds: 1))
                                    .then((value) {
                                  if (userDataServiceState.userData!.userRole ==
                                      'tutor') {
                                    context.router
                                        .replace(const TutorHomePageRouter());
                                  } else {
                                    context.router.replace(const HomeRoute());
                                  }
                                });
                              }
                            },
                            builder: (context, state) {
                              return AppButton(
                                buttonText: S.of(context).confirm,
                                isLoading: state.isLoading,
                                onPressed: () {
                                  _validateForm(context);
                                },
                              );
                            },
                          );
                        },
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
