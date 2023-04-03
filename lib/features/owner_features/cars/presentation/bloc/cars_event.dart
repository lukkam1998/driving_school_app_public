part of 'cars_bloc.dart';

@freezed
class CarsEvent with _$CarsEvent {
  const factory CarsEvent.getCars() = GetCarsEvent;
  const factory CarsEvent.addCar(Car car) = AddCarEvent;
  const factory CarsEvent.modifyCar(Car car) = ModifyCarEvent;
  const factory CarsEvent.removeCar(Car car) = RemoveCarEvent;
}
