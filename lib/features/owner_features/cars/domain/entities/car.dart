import 'package:freezed_annotation/freezed_annotation.dart';

part 'car.freezed.dart';
part 'car.g.dart';

@freezed
class Car with _$Car {
  const factory Car({
    required String? carId,
    required String mark,
    required String model,
    required String carRegistration,
    required DateTime lastOilChange,
    required DateTime lastCarReview,
    required int kilometersDone,
    required DateTime pucharseDate,
  }) = _Car;

  factory Car.fromJson(Map<String, Object?> json) => _$CarFromJson(json);
}
