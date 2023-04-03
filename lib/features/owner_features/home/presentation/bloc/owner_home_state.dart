part of 'owner_home_bloc.dart';

@freezed
class OwnerHomeState with _$OwnerHomeState {
  const factory OwnerHomeState({
    required bool isLoading,
    required bool hasError,
    required Stream<QuerySnapshot<Map<String, dynamic>>>? lessonStream,
  }) = _Initial;

  factory OwnerHomeState.initial() => const OwnerHomeState(
        isLoading: false,
        hasError: false,
        lessonStream: null,
      );
}
