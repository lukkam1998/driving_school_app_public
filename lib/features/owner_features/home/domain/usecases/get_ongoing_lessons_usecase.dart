import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../repository/owner_home_repository.dart';
import '../../../../../core/app_models/failure.dart';

@lazySingleton
class GetOngoingLessonsUsecase {
  final OwnerHomeRepository repository;

  GetOngoingLessonsUsecase(this.repository);

  Future<Either<Failure, Stream<QuerySnapshot<Map<String, dynamic>>>?>>
      call() async {
    return repository.getOngoingLessons();
  }
}
