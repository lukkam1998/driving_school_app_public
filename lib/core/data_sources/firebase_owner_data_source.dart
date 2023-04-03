import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import '../app_models/courses/user_course.dart';
import '../app_models/success.dart';
import '../app_models/user_models/user_model.dart';

import '../../features/owner_features/cars/domain/entities/car.dart';

abstract class FirebaseOwnerDataSource {
  Future<List<UserModel>> getInstructorsInfo();
  Future<List<UserModel>> getStandardUsersInfo();
  Future<Success> addCar(Car car);
  Future<Success> modifyCar(Car car);
  Future<List<Car>> getCars();
  Future<Success> removeCar(Car car);
  Future<UserModel> getStandardUserInfo(String userId);
  Future<List<UserCourse>> getUserDetails(
    String userId,
    bool isTutor,
  );
}

@LazySingleton(as: FirebaseOwnerDataSource)
class FirebaseOwnerDataSourceImpl extends FirebaseOwnerDataSource {
  final FirebaseFirestore _firebaseFirestore;

  FirebaseOwnerDataSourceImpl(this._firebaseFirestore);

  @override
  Future<List<UserModel>> getInstructorsInfo() async {
    final list = await _firebaseFirestore
        .collection('users')
        .where('userRole', isEqualTo: 'tutor')
        .get()
        .then((value) {
      return value.docs.map((e) {
        final user = UserModel.fromJson(
          e.data(),
        );
        return user.copyWith(userId: e.id);
      }).toList();
    });

    return list;
  }

  @override
  Future<List<UserModel>> getStandardUsersInfo() async {
    final list = await _firebaseFirestore
        .collection('users')
        .where('userRole', isEqualTo: 'default')
        .get()
        .then((value) {
      return value.docs.map((e) {
        final user = UserModel.fromJson(
          e.data(),
        );
        return user.copyWith(userId: e.id);
      }).toList();
    });
    return list;
  }

  @override
  Future<UserModel> getStandardUserInfo(String userId) async {
    final user = await _firebaseFirestore
        .collection('users')
        .doc(userId)
        .get()
        .then((value) {
      return UserModel.fromJson(value.data()!);
    });
    return user;
  }

  @override
  Future<Success> addCar(Car car) async {
    final result =
        await _firebaseFirestore.collection('cars').add(car.toJson());
    final updatedCar = car.copyWith(carId: result.id);
    await _firebaseFirestore
        .collection('cars')
        .doc(result.id)
        .set(updatedCar.toJson());
    return Success();
  }

  @override
  Future<List<Car>> getCars() async {
    final list =
        await _firebaseFirestore.collection('cars').get().then((value) {
      return value.docs.map((e) {
        final car = Car.fromJson(
          e.data(),
        );
        return car.copyWith(carId: e.id);
      }).toList();
    });

    return list;
  }

  @override
  Future<Success> modifyCar(Car car) async {
    await _firebaseFirestore
        .collection('cars')
        .doc(car.carId!)
        .set(car.toJson());
    return Success();
  }

  @override
  Future<Success> removeCar(Car car) async {
    await _firebaseFirestore.collection('cars').doc(car.carId!).delete();
    return Success();
  }

  @override
  Future<List<UserCourse>> getUserDetails(
    String userId,
    bool isTutor,
  ) async {
    Query<Map<String, dynamic>> result;
    if (isTutor) {
      result = await _firebaseFirestore
          .collection('user_courses')
          .where('tutorId', isEqualTo: userId);
    } else {
      result = await _firebaseFirestore
          .collection('user_courses')
          .where('userId', isEqualTo: userId);
    }

    final userCoursesList = await result.get().then(
          (value) => value.docs
              .map(
                (e) => UserCourse.fromJson(
                  e.data(),
                ),
              )
              .toList(),
        );
    return userCoursesList;
  }
}
