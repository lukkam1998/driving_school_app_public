import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/app_models/failure.dart';

abstract class OwnerHomeRepository {
  Future<Either<Failure, Stream<QuerySnapshot<Map<String, dynamic>>>?>>
      getOngoingLessons();
}
