part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<PromotionWithCourseData> promotions,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory HomeState.initial() => const HomeState(
        promotions: [],
        isLoading: false,
        hasError: false,
      );
}
