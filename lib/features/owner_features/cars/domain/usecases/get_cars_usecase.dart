import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/failure.dart';
import '../entities/car.dart';
import '../repositories/cars_repository.dart';

@lazySingleton
class GetCarsUsecase {
  final CarsRepository _repository;

  GetCarsUsecase(this._repository);

  Future<Either<Failure, List<Car>>> call() async {
    return await _repository.getCars();
  }
}
