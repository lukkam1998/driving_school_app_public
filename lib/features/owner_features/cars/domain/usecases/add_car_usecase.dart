import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/success.dart';
import '../entities/car.dart';
import '../repositories/cars_repository.dart';

@lazySingleton
class AddCarUsecase {
  final CarsRepository _repository;

  AddCarUsecase(this._repository);

  Future<Either<Failure, Success>> call(Car car) async {
    return await _repository.addNewCar(car);
  }
}
