part of 'cars_bloc.dart';

@freezed
class CarsState with _$CarsState {
  const factory CarsState({
    required List<Car> cars,
    required bool isLoading,
    required bool hasError,
    required bool actionSucced,
  }) = _Initial;

  factory CarsState.initial() => const CarsState(
        cars: [],
        isLoading: false,
        hasError: false,
        actionSucced: false,
      );
}
