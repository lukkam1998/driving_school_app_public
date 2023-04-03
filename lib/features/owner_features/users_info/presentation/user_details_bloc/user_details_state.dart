part of 'user_details_bloc.dart';

@freezed
class UserDetailsState with _$UserDetailsState {
  const factory UserDetailsState({
    required List<UserCourseDetails> courses,
    required bool isLoading,
    required bool hasError,
    String? errorMessage,
  }) = _UserDetailsState;

  factory UserDetailsState.initial() => const UserDetailsState(
        courses: [],
        isLoading: false,
        hasError: false,
      );
}
