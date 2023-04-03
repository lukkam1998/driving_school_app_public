part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial({@Default(false) bool isLoading}) =
      _Initial;
  const factory SignInState.success({@Default(false) bool isLoading}) =
      _Success;
  const factory SignInState.signedOut({@Default(false) bool isLoading}) =
      _SignedOut;
  const factory SignInState.failure({
    @Default(false) bool isLoading,
    required String errorMessage,
  }) = _Failure;
}
