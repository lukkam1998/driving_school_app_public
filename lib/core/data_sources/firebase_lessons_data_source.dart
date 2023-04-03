import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import '../../generated/l10n.dart';
import '../app_models/courses/user_course.dart';
import '../app_models/lessons/live_lesson_view.dart';
import '../app_models/lessons/user_course_data.dart';
import '../app_models/user_models/user_restricted_model.dart';
import '../services/location/geolocator_service.dart';
import '../app_models/app_exceptions.dart';
import '../app_models/lessons/ride_marker.dart';
import '../app_models/lessons/user_lesson.dart';

import '../app_models/success.dart';

abstract class FirebaseLessonsDataSource {
  Future<List<UserLesson>> loadUserLessons(
    String userId,
    bool isUserTutor,
  );

  Future<Success> planLesson(UserLesson userLesson);
  Future<Success> addMarker({
    required String lessonId,
    required UserCourseData userCourseData,
  });
  Future<Success> startLesson(String lessonId, DateTime startOfLesson);
  Future<Success> endLesson(String lessonId, DateTime endOfLesson);
  Future<Stream<QuerySnapshot<Map<String, dynamic>>>?> getOngoingLessons();

  Future<void> updateLiveLessonData({
    required String lessonId,
  });

  Future<void> createLiveLessonData({
    required String lessonId,
    required UserCourseData userCourseData,
    required UserRestrictedModel tutorData,
    required UserRestrictedModel userData,
  });

  Future<Success> cancelLesson(String lessonId);
  Future<Success> confirmLesson(UserLesson lesson);
  Future<Success> modifyLesson(UserLesson lesson);
}

@LazySingleton(as: FirebaseLessonsDataSource)
class FirebaseLessonsDataSourceImpl extends FirebaseLessonsDataSource {
  final FirebaseFirestore _firebaseFirestore;
  final GeolocatorService _geolocatorService;

  FirebaseLessonsDataSourceImpl(
    this._firebaseFirestore,
    this._geolocatorService,
  );

  @override
  Future<List<UserLesson>> loadUserLessons(
    String userId,
    bool isUserTutor,
  ) async {
    try {
      final String searchString = isUserTutor ? 'tutorId' : 'userId';

      final List<UserLesson> list = await _firebaseFirestore
          .collection('user_lessons')
          .where(
            searchString,
            isEqualTo: userId,
          )
          .get()
          .then(
            (snapshot) => snapshot.docs.map(
              (lessons) {
                return UserLesson.fromJson(lessons.data());
              },
            ).toList(),
          );

      for (int i = 0; i < list.length; i++) {
        try {
          List<RideMarker>? ridermarkers = await _firebaseFirestore
              .collection('user_lessons')
              .doc(list[i].lessonId)
              .collection('rideMarkers')
              .orderBy('timestamp')
              .get()
              .then(
                (snapshot) => snapshot.docs
                    .map(
                      (rideMarker) => RideMarker.fromJson(
                        rideMarker.data(),
                      ),
                    )
                    .toList(),
              );
          list[i] = list[i].copyWith(rideMarkes: ridermarkers);
        } on Exception catch (_) {
          continue;
        }
      }
      return list;
    } on Exception catch (_) {
      throw AppFirebaseException('No lessons');
    }
  }

  @override
  Future<Success> planLesson(UserLesson userLesson) async {
    try {
      final res = await _firebaseFirestore
          .collection('user_lessons')
          .add(userLesson.toJson());
      final userLess = userLesson.copyWith(lessonId: res.id);
      await _firebaseFirestore
          .collection('user_lessons')
          .doc(res.id)
          .set(userLess.toJson());

      return Success();
    } on Exception catch (_) {
      throw AppFirebaseException(S().couldnt_add_lesson);
    }
  }

  @override
  Future<Success> addMarker({
    required String lessonId,
    required UserCourseData userCourseData,
  }) async {
    try {
      final position = await _geolocatorService.getCurrentPosition();

      final rideMarker = RideMarker(
        latitude: position.latitude,
        longitude: position.longitude,
        timestamp: Timestamp.now(),
      );

      _firebaseFirestore
          .collection('user_lessons')
          .doc(lessonId)
          .collection('rideMarkers')
          .add(rideMarker.toJson());

      return Success();
    } on Exception catch (_) {
      throw UnimplementedError();
    }
  }

  @override
  Future<Success> startLesson(
    String lessonId,
    DateTime startOfLesson,
  ) async {
    try {
      await _firebaseFirestore.collection('user_lessons').doc(lessonId).update({
        'isGoingNow': true,
        'realStartOfLesson': startOfLesson,
      });
      return Success();
    } on Exception catch (_) {
      throw UnimplementedError();
    }
  }

  @override
  Future<Success> endLesson(
    String lessonId,
    DateTime endOfLesson,
  ) async {
    try {
      await _firebaseFirestore.collection('user_lessons').doc(lessonId).update({
        'isGoingNow': false,
        'hasTookPlace': true,
        'realEndOfLesson': endOfLesson,
      });
      await Future.delayed(const Duration(milliseconds: 300));
      final lesson = await _firebaseFirestore
          .collection('user_lessons')
          .doc(lessonId)
          .get()
          .then((value) => UserLesson.fromJson(value.data()!));
      await Future.delayed(const Duration(milliseconds: 300));
      UserCourse res = await _firebaseFirestore
          .collection('user_courses')
          .doc(lesson.userCourseId)
          .get()
          .then((value) => UserCourse.fromJson(value.data()!));
      int hourDuration =
          lesson.realEndOfLesson!.hour - lesson.realStartOfLesson!.hour;
      int mins =
          lesson.realEndOfLesson!.minute - lesson.realStartOfLesson!.minute;
      if (mins >= 45) {
        hourDuration + 1;
      }
      res = res.copyWith(hoursLeft: res.hoursLeft! - hourDuration);
      await Future.delayed(const Duration(milliseconds: 300));
      await _firebaseFirestore
          .collection('user_courses')
          .doc(res.userCourseId)
          .set(res.toJson());
      await Future.delayed(const Duration(milliseconds: 300));
      await _firebaseFirestore
          .collection('live_lessons_view')
          .doc(lessonId)
          .delete();

      return Success();
    } on Exception catch (_) {
      throw UnimplementedError();
    }
  }

  @override
  Future<Stream<QuerySnapshot<Map<String, dynamic>>>?>
      getOngoingLessons() async {
    return _firebaseFirestore.collection('live_lessons_view').snapshots();
  }

  @override
  Future<void> createLiveLessonData({
    required String lessonId,
    required UserCourseData userCourseData,
    required UserRestrictedModel tutorData,
    required UserRestrictedModel userData,
  }) async {
    final position = await _geolocatorService.getCurrentPosition();
    final liveLessonView = LiveLessonView(
      courseName: userCourseData.course.category,
      latitude: position.latitude,
      longitude: position.longitude,
      tutorName: tutorData.name ?? '',
      tutorSurname: tutorData.surname ?? '',
      userName: userData.name ?? '',
      userSurname: userData.surname ?? '',
    );

    _firebaseFirestore.collection('live_lessons_view').doc(lessonId).set(
          liveLessonView.toJson(),
        );
  }

  @override
  Future<void> updateLiveLessonData({
    required String lessonId,
  }) async {
    try {
      final position = await _geolocatorService.getCurrentPosition();
      _firebaseFirestore.collection('live_lessons_view').doc(lessonId).update({
        'latitude': position.latitude,
        'longitude': position.longitude,
      });
    } on FirebaseException catch (e) {
      print(e);
    }
  }

  @override
  Future<Success> cancelLesson(String lessonId) async {
    await _firebaseFirestore.collection('user_lessons').doc(lessonId).delete();
    return Success();
  }

  @override
  Future<Success> confirmLesson(UserLesson lesson) async {
    await _firebaseFirestore
        .collection('user_lessons')
        .doc(lesson.lessonId)
        .set(
          lesson
              .copyWith(
                isApproved: true,
                isModified: false,
              )
              .toJson(),
        );
    return Success();
  }

  @override
  Future<Success> modifyLesson(UserLesson lesson) async {
    await _firebaseFirestore
        .collection('user_lessons')
        .doc(lesson.lessonId)
        .set(
          lesson.copyWith(isModified: true).toJson(),
        );
    return Success();
  }
}
