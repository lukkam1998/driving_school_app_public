part of 'buy_more_hours_cubit.dart';

@freezed
class BuyMoreHoursState with _$BuyMoreHoursState {
  const factory BuyMoreHoursState.initial() = _Initial;
  const factory BuyMoreHoursState.loading() = _Loading;
  const factory BuyMoreHoursState.success() = _Success;
  const factory BuyMoreHoursState.failure() = _Failure;
}
