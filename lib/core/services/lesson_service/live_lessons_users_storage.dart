import 'package:managing_driving_school_app/core/app_models/user_models/user_restricted_model.dart';

class LiveLessonsUsersStorage {
  final UserRestrictedModel tutorData;
  final UserRestrictedModel appreticeData;

  LiveLessonsUsersStorage(
    this.tutorData,
    this.appreticeData,
  );
}
