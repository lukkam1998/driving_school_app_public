import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/sign_up_instructor_usecase.dart';
import '../../../../../core/app_models/user_models/user_register_data.dart';
import '../../domain/usecases/sign_up_user_usecase.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUserUsecase _signUpUserUsecase;
  final SignUpInstructorUsecase _signUpInstructorUsecase;
  
  SignUpBloc(
    this._signUpUserUsecase,
    this._signUpInstructorUsecase,
  ) : super(const SignUpState.initial()) {
    on<SignUpUserEvent>(signUpUser);
    on<SignUpInstructorEvent>(_signUpInstructor);
  }

  void signUpUser(
    SignUpUserEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await _signUpUserUsecase(event.userRegisterData);
    result.fold(
      (failure) => emit(
        SignUpState.failure(
          isLoading: false,
          errorMessage: failure.errorMessage,
        ),
      ),
      (success) => emit(
        const SignUpState.success(isLoading: false),
      ),
    );
  }

  void _signUpInstructor(
    SignUpInstructorEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await _signUpInstructorUsecase(event.userRegisterData);
    result.fold(
      (failure) => emit(SignUpState.failure(
        isLoading: false,
        errorMessage: failure.errorMessage,
      )),
      (success) => emit(
        const SignUpState.success(isLoading: false),
      ),
    );
  }
}
