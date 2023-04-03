import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/snackbar/app_snackbar.dart';
import '../../../../../core/app_models/user_models/user_register_data.dart';
import '../../../../../core/app_router/app_router.dart';
import '../../../../../core/textfields_validators/textfield_validator.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../injection_container.dart';
import '../sign_up_bloc/sign_up_bloc.dart';
import '../widgets/app_button.dart';
import '../widgets/login_text_button.dart';
import '../widgets/login_text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repeatedPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextFieldValidator _validator = sl<TextFieldValidator>();

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
          SignUpUserEvent(
            UserRegisterData(login: login, password: password),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SignUpBloc>(),
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: Theme.of(context).colorScheme.background,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: SingleChildScrollView(
                      child: Form(
                        key: _form,
                        child: Column(
                          children: [
                            const SizedBox(height: 40),
                            Text(
                              S.of(context).signup,
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            const SizedBox(height: 40),
                            LoginTextField(
                              textInputAction: TextInputAction.next,
                              hintText: S.of(context).emailhint,
                              controller: _loginController,
                              validator: (val) => _validator.validateEmail(val),
                            ),
                            const SizedBox(height: 20),
                            LoginTextField(
                              textInputAction: TextInputAction.next,
                              hintText: S.of(context).passwordhint,
                              controller: _passwordController,
                              obscureText: true,
                              validator: (val) =>
                                  _validator.validatePassword(val),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            LoginTextField(
                              textInputAction: TextInputAction.done,
                              hintText: S.of(context).passwordhintrepeat,
                              controller: _repeatedPasswordController,
                              obscureText: true,
                              validator: (val) =>
                                  _validator.validateRepeatedPassword(
                                val,
                                _passwordController.text,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            BlocConsumer<SignUpBloc, SignUpState>(
                              listener: (context, state) {
                                state.whenOrNull(
                                  failure: (isLoading, errorMessage) {
                                    AppSnackbar.showSnackbar(
                                      context,
                                      errorMessage,
                                    );
                                  },
                                  success: (isLoading) {
                                    AppSnackbar.showSnackbar(
                                      context,
                                      S.of(context).singupSuccessed,
                                    );
                                    AutoRouter.of(context).replace(
                                      const SignInRoute(),
                                    );
                                  },
                                );
                              },
                              builder: (context, state) {
                                return AppButton(
                                  buttonText: S.of(context).signup,
                                  isLoading: state.isLoading,
                                  onPressed: () {
                                    _validateForm(context);
                                  },
                                );
                              },
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            LoginTextButton(
                              title: S.of(context).have_acc,
                              eventTitle: S.of(context).signin,
                              onPressed: () {
                                AutoRouter.of(context).replace(
                                  const SignInRoute(),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
