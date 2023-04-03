part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial({@Default(false) bool isLoading}) =
      _Initial;
  const factory SignUpState.success({@Default(false) bool isLoading}) =
      _Success;
  const factory SignUpState.failure({
    @Default(false) bool isLoading,
    required String errorMessage,
  }) = _Failure;
}
