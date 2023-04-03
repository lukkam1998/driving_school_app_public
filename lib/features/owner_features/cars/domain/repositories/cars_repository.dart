import 'package:dartz/dartz.dart';
import '../../../../../core/app_models/success.dart';

import '../../../../../core/app_models/failure.dart';
import '../entities/car.dart';

abstract class CarsRepository {
  Future<Either<Failure, Success>> addNewCar(Car car);
  Future<Either<Failure, Success>> modifyCar(Car car);
  Future<Either<Failure, List<Car>>> getCars();
  Future<Either<Failure, Success>> removeCar(Car car);
}
