import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:managing_driving_school_app/core/app_models/failure.dart';
import '../app_models/promotions/promotion.dart';
import '../app_models/promotions/promotion_with_course_data.dart';
import '../app_models/courses/user_course.dart';
import '../services/user_data_service/user_data_service.dart';
import '../../common/strings/strings.dart';
import '../app_models/app_exceptions.dart';
import '../app_models/courses/course.dart';

import '../app_models/success.dart';

abstract class FirebaseCourseDataSource {
  Future<List<Tuple2<Course, Promotion?>>> loadCourses();
  Future<Success> enrollUserToCourse(
    Course course,
    Promotion? promotion,
    String userId,
  );
  Future<List<Tuple2<UserCourse, Course>>> loadUserCourses(String userId);
  Future<List<UserCourse>> loadUnapprovedCourses();
  Future<List<UserCourse>> getUserApprovedCourses(
    String userId,
    bool isUserTutor,
  );
  Future<Course> getCourseData(String courseId);
  Future<Success> takeCourse(UserCourse userCourse);
  Future<List<PromotionWithCourseData>> getActivePromotions();
  Future<Success> addCourse(Course course);
  Future<List<Course>> getOngoingCourses();
  Future<Success> modifyCourse(Course course);
  Future<Success> dropOutOfTheCourse(UserCourse course);
  Future<Success> buyMoreHours(
    UserCourse userCourse,
    int numberOfHours,
    int additionalPrice,
  );
}

@LazySingleton(as: FirebaseCourseDataSource)
class FirebaseCourseDataSourceImpl extends FirebaseCourseDataSource {
  final FirebaseFirestore _firebaseFirestore;
  final UserDataService _userDataService;

  FirebaseCourseDataSourceImpl(this._firebaseFirestore, this._userDataService);

  @override
  Future<List<Tuple2<Course, Promotion?>>> loadCourses() async {
    try {
      List<Course> coursesList = [];
      List<Tuple2<Course, Promotion?>> coursesWithPromotionsList = [];
      coursesList = await _firebaseFirestore
          .collection('courses')
          .where('isAvailable', isEqualTo: true)
          .orderBy('category')
          .get()
          .then(
            (snapshot) => snapshot.docs
                .map(
                  (course) => Course.fromJson(course.data()),
                )
                .toList(),
          );
      for (int i = 0; i < coursesList.length; i++) {
        final result = await _firebaseFirestore
            .collection('promotion')
            .where(
              'courseId',
              isEqualTo: coursesList[i].id,
            )
            .get()
            .then((value) {
          return value.docs.map((e) => Promotion.fromJson(e.data())).toList();
        });
        if (result.length > 1) {
          throw AppFirebaseException('');
        }
        Promotion? promotion = null;
        if (result.isNotEmpty) {
          promotion = result[0];
        }

        coursesWithPromotionsList.add(Tuple2(coursesList[i], promotion));
      }

      return coursesWithPromotionsList;
    } on Exception catch (_) {
      throw AppFirebaseException('');
    }
  }

  @override
  Future<Success> enrollUserToCourse(
    Course course,
    Promotion? promotion,
    String userId,
  ) async {
    try {
      final result = await _firebaseFirestore
          .collection('user_courses')
          .where('courseId', isEqualTo: course.id)
          .where('userId', isEqualTo: userId)
          .get();
      if (result.docs.isNotEmpty) {
        throw AppFirebaseException(strings.already_enrolled);
      }

      final UserCourse userCourse = UserCourse(
        userCourseId: '',
        courseId: course.id!,
        userId: userId,
        dateOfEnroll: DateTime.now(),
        isApproved: false,
        hoursTotal: double.parse(course.duration),
        promotionId: promotion?.promotionId,
      );

      final res = await _firebaseFirestore
          .collection('user_courses')
          .add(userCourse.toJson());

      final updatedUserCourse = userCourse.copyWith(userCourseId: res.id);

      await _firebaseFirestore
          .collection('user_courses')
          .doc(res.id)
          .set(updatedUserCourse.toJson());

      return Success();
    } on Exception catch (e) {
      if (e is AppFirebaseException) {
        throw AppFirebaseException(e.message);
      }
      throw AppFirebaseException('Couldn\'t enroll course');
    }
  }

  @override
  Future<List<Tuple2<UserCourse, Course>>> loadUserCourses(
    String userId,
  ) async {
    try {
      List<UserCourse> userCourseList = [];
      userCourseList = await _firebaseFirestore
          .collection('user_courses')
          .where('userId', isEqualTo: userId)
          .orderBy('dateOfEnroll')
          .get()
          .then(
            (snapshot) => snapshot.docs
                .map((course) => UserCourse.fromJson(course.data()))
                .toList(),
          );

      List<Course> coursesList = [];
      for (int i = 0; i < userCourseList.length; i++) {
        final course = await getCourseData(userCourseList[i].courseId);
        coursesList.add(course);
      }
      List<Tuple2<UserCourse, Course>> listOfTuples = [];
      if (coursesList.length == userCourseList.length) {
        for (int i = 0; i < userCourseList.length; i++) {
          listOfTuples.add(Tuple2(userCourseList[i], coursesList[i]));
        }
      } else {
        throw AppFirebaseException('Smt went wrong...');
      }

      return listOfTuples;
    } on Exception catch (e) {
      if (e is AppFirebaseException) {
        throw AppFirebaseException(e.message);
      }
      throw AppFirebaseException('Couldn\'t enroll course');
    }
  }

  @override
  Future<Course> getCourseData(String courseId) async {
    return await _firebaseFirestore
        .collection('courses')
        .doc(courseId)
        .get()
        .then((snapshot) => Course.fromJson(snapshot.data()!));
  }

  @override
  Future<List<UserCourse>> loadUnapprovedCourses() async {
    try {
      List<UserCourse> userCourseList = [];
      userCourseList = await _firebaseFirestore
          .collection('user_courses')
          .where('isApproved', isEqualTo: false)
          .orderBy('dateOfEnroll')
          .get()
          .then(
            (snapshot) => snapshot.docs
                .map((course) => UserCourse.fromJson(course.data()))
                .toList(),
          );
      return userCourseList;
    } on Exception catch (_) {
      throw AppFirebaseException('Couldn\'t load');
    }
  }

  @override
  Future<Success> takeCourse(UserCourse userCourse) async {
    try {
      String? docId;
      await _firebaseFirestore
          .collection('user_courses')
          .where('userId', isEqualTo: userCourse.userId)
          .where('courseId', isEqualTo: userCourse.courseId)
          .get()
          .then((value) => docId = value.docs.first.id);

      if (docId == null) {
        throw AppFirebaseException('No data');
      }

      final userCourseData = userCourse.copyWith(
        isApproved: true,
        tutorId: _userDataService.getUserId(),
        hoursLeft: userCourse.hoursTotal,
      );

      await _firebaseFirestore
          .collection('user_courses')
          .doc(docId)
          .set(userCourseData.toJson());

      return Success();
    } on Exception catch (e) {
      if (e is AppFirebaseException) {
        throw AppFirebaseException(e.message);
      }
      throw AppFirebaseException('Some error');
    }
  }

  @override
  Future<List<UserCourse>> getUserApprovedCourses(
    String userId,
    bool isUserTutor,
  ) async {
    try {
      final String searchString = isUserTutor ? 'tutorId' : 'userId';

      List<UserCourse> userCourseList = [];
      userCourseList = await _firebaseFirestore
          .collection('user_courses')
          .where(searchString, isEqualTo: userId)
          .where('isApproved', isEqualTo: true)
          .orderBy('dateOfEnroll')
          .get()
          .then(
            (snapshot) => snapshot.docs
                .map((course) => UserCourse.fromJson(course.data()))
                .toList(),
          );
      return userCourseList;
    } on Exception catch (_) {
      throw AppFirebaseException('Couldn\'t load');
    }
  }

  @override
  Future<List<PromotionWithCourseData>> getActivePromotions() async {
    List<PromotionWithCourseData> promotionWithCourseDataList = [];
    List<Promotion> promotionList = [];
    promotionList = await _firebaseFirestore
        .collection('promotion')
        .where('isAvailable', isEqualTo: true)
        .where(
          'expiryDate',
          isGreaterThanOrEqualTo: Timestamp.now(),
        )
        .get()
        .then(
          (snapshot) => snapshot.docs
              .map(
                (promotion) => Promotion.fromJson(
                  promotion.data(),
                ),
              )
              .toList(),
        );

    for (var promotion in promotionList) {
      promotionWithCourseDataList.add(
        PromotionWithCourseData(
          promotion,
          await getCourseData(
            promotion.courseId,
          ),
        ),
      );
    }

    return promotionWithCourseDataList;
  }

  @override
  Future<Success> addCourse(Course course) async {
    final result =
        await _firebaseFirestore.collection('courses').add(course.toJson());
    await _firebaseFirestore.collection('courses').doc(result.id).set(
          course.copyWith(id: result.id).toJson(),
        );
    return Success();
  }

  @override
  Future<List<Course>> getOngoingCourses() async {
    final result = await _firebaseFirestore.collection('courses').get().then(
          (value) => value.docs
              .map(
                (e) => Course.fromJson(
                  e.data(),
                ),
              )
              .toList(),
        );
    return result;
  }

  @override
  Future<Success> modifyCourse(Course course) async {
    await _firebaseFirestore
        .collection('courses')
        .doc(course.id)
        .set(course.toJson());
    return Success();
  }

  @override
  Future<Success> dropOutOfTheCourse(UserCourse course) async {
    if (!course.isApproved) {
      await _firebaseFirestore
          .collection('user_courses')
          .doc(course.userCourseId)
          .delete();
      return Success();
    }
    throw const AppFailures.firebaseFailure('Course is already approved');
  }

  @override
  Future<Success> buyMoreHours(
    UserCourse userCourse,
    int numberOfHours,
    int additionalPrice,
  ) async {
    final alreadyBoughtHours = userCourse.boughtHours ?? 0;
    final additionalPayment = userCourse.additionalPayment ?? 0;
    final hoursLeft = userCourse.hoursLeft ?? 0;
    final updatedCourse = userCourse.copyWith(
      hoursTotal: userCourse.hoursTotal + numberOfHours,
      boughtHours: alreadyBoughtHours + numberOfHours.toDouble(),
      additionalPayment: additionalPayment + additionalPrice.toDouble(),
      hoursLeft: hoursLeft + numberOfHours.toDouble(),
    );

    await _firebaseFirestore
        .collection('user_courses')
        .doc(userCourse.userCourseId)
        .update(
          updatedCourse.toJson(),
        );
    return Success();
  }
}
