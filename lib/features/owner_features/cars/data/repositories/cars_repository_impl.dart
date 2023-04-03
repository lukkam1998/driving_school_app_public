import 'package:injectable/injectable.dart';
import '../../../../../core/data_sources/firebase_owner_data_source.dart';
import '../../domain/entities/car.dart';
import '../../../../../core/app_models/success.dart';
import '../../../../../core/app_models/failure.dart';
import 'package:dartz/dartz.dart';
import '../../domain/repositories/cars_repository.dart';

@LazySingleton(as: CarsRepository)
class CarsRepositoryImpl extends CarsRepository {
  final FirebaseOwnerDataSource _firebaseOwnerDataSource;

  CarsRepositoryImpl(this._firebaseOwnerDataSource);
  @override
  Future<Either<Failure, Success>> addNewCar(Car car) async {
    return Right(await _firebaseOwnerDataSource.addCar(car));
  }

  @override
  Future<Either<Failure, List<Car>>> getCars() async {
    return Right(await _firebaseOwnerDataSource.getCars());
  }

  @override
  Future<Either<Failure, Success>> modifyCar(Car car) async {
    return Right(await _firebaseOwnerDataSource.modifyCar(car));
  }

  @override
  Future<Either<Failure, Success>> removeCar(Car car) async {
    return Right(await _firebaseOwnerDataSource.removeCar(car));
  }
}
