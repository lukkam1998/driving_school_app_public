import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../common/snackbar/app_snackbar.dart';
import '../../../../../core/app_models/user_models/user_sign_in_data.dart';
import '../../../../../core/app_router/app_router.dart';
import '../../../../../core/services/user_data_service/user_data_service.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../injection_container.dart';
import '../sign_in_bloc/sign_in_bloc.dart';
import '../widgets/app_button.dart';
import '../widgets/login_text_button.dart';
import '../widgets/login_text_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  @override
  void dispose() {
    _loginController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _validateForm(BuildContext context) {
    final isFormValid = _form.currentState?.validate();
    if (!isFormValid!) {
      return;
    }
    final login = _loginController.text;
    final password = _passwordController.text;

    context.read<SignInBloc>().add(
          SignInUserEvent(
            UserSignInData(login: login, password: password),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Theme.of(context).colorScheme.background,
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: _form,
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 4,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                            child: SvgPicture.asset(
                              'assets/logo/car.svg',
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          S.of(context).welcome,
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        LoginTextField(
                          textInputAction: TextInputAction.next,
                          hintText: S.of(context).emailhint,
                          controller: _loginController,
                          validator: (value) {
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        LoginTextField(
                          textInputAction: TextInputAction.done,
                          hintText: S.of(context).passwordhint,
                          controller: _passwordController,
                          obscureText: true,
                          validator: (value) {
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        BlocConsumer<SignInBloc, SignInState>(
                          listener: (context, state) {
                            final userDataServiceState = sl<UserDataService>();
                            state.whenOrNull(
                              success: (isLoading) {
                                if (userDataServiceState
                                        .getUserData()
                                        .userRole ==
                                    'owner') {
                                  AutoRouter.of(context)
                                      .replace(const OwnerHomePageRouter());
                                  return;
                                }
                                if (userDataServiceState
                                            .getUserData()
                                            .userRole ==
                                        'tutor' &&
                                    userDataServiceState
                                        .getUserData()
                                        .firstLogin!) {
                                  AutoRouter.of(context).replace(
                                    const FirstLoginRoute(),
                                  );
                                  return;
                                } else if (userDataServiceState
                                        .getUserData()
                                        .userRole ==
                                    'tutor') {
                                  AutoRouter.of(context)
                                      .replace(const TutorHomePageRouter());
                                  return;
                                }

                                userDataServiceState.getUserData().firstLogin!
                                    ? AutoRouter.of(context).replace(
                                        const FirstLoginRoute(),
                                      )
                                    : AutoRouter.of(context)
                                        .replace(const HomeRoute());
                              },
                              failure: (isLoading, errorMessage) {
                                AppSnackbar.showSnackbar(context, errorMessage);
                              },
                            );
                          },
                          builder: (context, state) {
                            return AppButton(
                              isLoading: state.isLoading,
                              buttonText: S.of(context).signin,
                              onPressed: () {
                                _validateForm(context);
                              },
                            );
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        LoginTextButton(
                          title: S.of(context).donthaveacc,
                          eventTitle: S.of(context).signup,
                          onPressed: () {
                            AutoRouter.of(context).replace(const SignUpRoute());
                          },
                        ),
                        Text(
                          S.of(context).or,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 28,
                              width: 28,
                              child: SvgPicture.asset(
                                'assets/logo/google.svg',
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              S.of(context).continue_with_google,
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
