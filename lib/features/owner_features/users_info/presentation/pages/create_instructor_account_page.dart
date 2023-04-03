import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:managing_driving_school_app/common/snackbar/app_snackbar.dart';
import '../../../../../common/widgets/text_fields/main_app_textfield.dart';
import '../../../../core_features/login/presentation/widgets/app_button.dart';

import '../../../../../common/widgets/page_template/page_template.dart';
import '../../../../../core/app_models/user_models/user_register_data.dart';
import '../../../../../core/textfields_validators/textfield_validator.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../injection_container.dart';
import '../../../../core_features/login/presentation/sign_up_bloc/sign_up_bloc.dart';

class CreateInstructorAccountPage extends StatefulWidget {
  const CreateInstructorAccountPage({super.key});

  @override
  State<CreateInstructorAccountPage> createState() =>
      _CreateInstructorAccountPageState();
}

class _CreateInstructorAccountPageState
    extends State<CreateInstructorAccountPage> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repeatedPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextFieldValidator _validator = TextFieldValidator();

  @override
  void dispose() {
    _loginController.dispose();
    _passwordController.dispose();
    _repeatedPasswordController.dispose();
    super.dispose();
  }

  void _validateForm(BuildContext context) {
    final isFormValid = _form.currentState?.validate();
    if (!isFormValid!) {
      return;
    }
    final login = _loginController.text;
    final password = _passwordController.text;

    context.read<SignUpBloc>().add(
          SignUpInstructorEvent(
            UserRegisterData(login: login, password: password),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SignUpBloc>(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            S.of(context).create_instructor_account,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: PageTemplate(
          body: Form(
            key: _form,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  MainAppTextField(
                    hintText: S.of(context).emailhint,
                    controller: _loginController,
                    validator: (val) => _validator.validateEmail(val),
                    fillColor:
                        Theme.of(context).colorScheme.primary.withOpacity(0.8),
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 12),
                  MainAppTextField(
                    hintText: S.of(context).passwordhint,
                    isObscure: true,
                    controller: _passwordController,
                    validator: (val) => _validator.validatePassword(val),
                    fillColor:
                        Theme.of(context).colorScheme.primary.withOpacity(0.8),
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 12),
                  MainAppTextField(
                    isObscure: true,
                    hintText: S.of(context).passwordhintrepeat,
                    controller: _repeatedPasswordController,
                    validator: (val) => _validator.validateRepeatedPassword(
                      val,
                      _passwordController.text,
                    ),
                    fillColor:
                        Theme.of(context).colorScheme.primary.withOpacity(0.8),
                    textInputAction: TextInputAction.next,
                  ),
                  const Spacer(),
                  BlocConsumer<SignUpBloc, SignUpState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        success: (isLoading) {
                          AppSnackbar.showSnackbar(
                            context,
                            S.of(context).account_created_successfully,
                          );

                          _loginController.clear();
                          _passwordController.clear();
                          _repeatedPasswordController.clear();
                        },
                        failure: (isLoading, errorMessage) {
                          AppSnackbar.showSnackbar(
                            context,
                            S.of(context).error_couldnt_create_acc,
                          );
                        },
                      );
                    },
                    builder: (context, state) {
                      return AppButton(
                        buttonText: S.of(context).createaccount,
                        isLoading: state.isLoading,
                        onPressed: () {
                          _validateForm(context);
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
