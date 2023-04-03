import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:managing_driving_school_app/features/owner_features/users_info/domain/repositories/users_informations_repository.dart';
import '../../../../../core/app_models/courses/user_course_details.dart';
import '../../../../../core/app_models/failure.dart';

@lazySingleton
class GetUserDetailsUsecase {
  final UsersInformationsRepository repository;

  GetUserDetailsUsecase(this.repository);

  Future<Either<Failure, List<UserCourseDetails>>> call(
    String userId,
    bool isTutor,
  ) async {
    return await repository.getUserDetails(userId, isTutor);
  }
}
