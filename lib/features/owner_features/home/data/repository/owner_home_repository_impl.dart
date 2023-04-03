import 'package:dartz/dartz.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/data_sources/firebase_lessons_data_source.dart';

import '../../domain/repository/owner_home_repository.dart';

@LazySingleton(as: OwnerHomeRepository)
class OwnerHomeRepositoryImpl extends OwnerHomeRepository {
  final FirebaseLessonsDataSource _firebaseLessonsDataSource;

  OwnerHomeRepositoryImpl(this._firebaseLessonsDataSource);

  @override
  Future<Either<Failure, Stream<QuerySnapshot<Map<String, dynamic>>>?>>
      getOngoingLessons() async {
    try {
      return Right(await _firebaseLessonsDataSource.getOngoingLessons());
    } on Exception catch (_) {
      throw UnimplementedError();
    }
  }
}
