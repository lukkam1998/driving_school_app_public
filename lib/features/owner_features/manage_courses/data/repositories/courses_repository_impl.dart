import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/success.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/courses/course.dart';
import 'package:dartz/dartz.dart';
import '../../../../../core/data_sources/firebase_courses_data_source.dart';
import '../../domain/repositories/courses_repository.dart';

@LazySingleton(as: CoursesRepository)
class CoursesRepositoryImpl extends CoursesRepository {
  final FirebaseCourseDataSource _firebaseCourseDataSource;

  CoursesRepositoryImpl(this._firebaseCourseDataSource);
  @override
  Future<Either<Failure, Success>> addCourse(Course course) async {
    return Right(await _firebaseCourseDataSource.addCourse(course));
  }

  @override
  Future<Either<Failure, List<Course>>> getOngoingCourses() async {
    return Right(await _firebaseCourseDataSource.getOngoingCourses());
  }
  
  @override
  Future<Either<Failure, Success>> modifyCourse(Course course) async {
    return Right(await _firebaseCourseDataSource.modifyCourse(course));
  }
}
