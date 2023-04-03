import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:managing_driving_school_app/core/app_models/app_exceptions.dart';
import 'package:managing_driving_school_app/generated/l10n.dart';
import '../../../../../core/app_models/lessons/user_course_data.dart';
import '../../../../../core/services/lesson_service/lesson_service.dart';
import '../../../../../core/services/location/geolocator_service.dart';
import '../../domain/repositories/start_lesson_repository.dart';

import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/success.dart';

@LazySingleton(as: StartLessonRepository)
class StartLessonRepositoryImpl implements StartLessonRepository {
  final GeolocatorService _geolocatorService;
  final LessonService _lessonService;

  StartLessonRepositoryImpl(this._geolocatorService, this._lessonService);

  @override
  Future<Either<Failure, Success>> endLesson({
    required String lessonId,
    required UserCourseData userCourseData,
    required DateTime lessonEndtime,
  }) async {
    await _lessonService.endLesson(lessonId, lessonEndtime);
    return Right(Success());
  }

  @override
  Future<Either<Failure, Success>> startLesson({
    String? lessonId,
    required UserCourseData userCourseData,
    required DateTime lessonStartTime,
  }) async {
    try {
      final isLocationAvailable =
          await _geolocatorService.isUserPermittedLocationServices();
      if (!isLocationAvailable) {
        return Left(
            AppFailures.cannotStartLesson(S().blocked_location_forever));
      } else {
        _lessonService.startLesson(
          lessonId: lessonId!,
          userCourseData: userCourseData,
          startOfLesson: lessonStartTime,
        );
        return Right(Success());
      }
    } on PermissionDeniedForeverException catch (_) {
      return Left(AppFailures.cannotStartLesson(S().blocked_location_forever));
    }
  }
}
