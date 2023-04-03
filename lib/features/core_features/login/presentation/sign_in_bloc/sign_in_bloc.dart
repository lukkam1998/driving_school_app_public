import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/app_models/user_models/user_sign_in_data.dart';
import '../../../../../core/services/user_data_service/user_data_service.dart';
import '../../domain/usecases/sign_in_user_usecase.dart';
import '../../domain/usecases/sign_out_user_usecase.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInUserUsecase signInUserUsecase;
  final SignOutUserUsecase signOutUserUsecase;
  final UserDataService userDataService;
  SignInBloc({
    required this.signInUserUsecase,
    required this.signOutUserUsecase,
    required this.userDataService,
  }) : super(const SignInState.initial()) {
    userDataService.authStream.listen((value) {
      if (value.isAuthorized!) {
        add(const UserSignedUpEvent());
      } else if (!value.isAuthorized!) {
        add(const UserSignedOutEvent());
      }
    });
    on<SignInUserEvent>(_signIn);
    on<SignOutUserEvent>(_signOut);
    on<UserSignedUpEvent>(_authUser);
    on<UserSignedOutEvent>(_signedOut);
  }

  void _signIn(SignInUserEvent event, Emitter<SignInState> emit) async {
    emit(const SignInState.initial(isLoading: true));
    final result = await signInUserUsecase(event.userSignInData);
    result.fold(
      (failure) => emit(
        SignInState.failure(
          isLoading: false,
          errorMessage: failure.errorMessage,
        ),
      ),
      (success) => null, // Wait for stream based authorization
    );
  }

  void _authUser(
    UserSignedUpEvent event,
    Emitter<SignInState> emit,
  ) {
    emit(const SignInState.success(isLoading: false));
  }

  void _signOut(
    SignOutUserEvent event,
    Emitter<SignInState> emit,
  ) async {
    signOutUserUsecase();
  }

  void _signedOut(
    UserSignedOutEvent event,
    Emitter<SignInState> emit,
  ) {
    emit(const SignInState.signedOut());
  }
}
