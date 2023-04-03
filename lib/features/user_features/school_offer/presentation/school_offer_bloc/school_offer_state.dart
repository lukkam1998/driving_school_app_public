part of 'school_offer_bloc.dart';

@freezed
class SchoolOfferState with _$SchoolOfferState {
  const factory SchoolOfferState({
    required List<Tuple2<Course, Promotion?>> courses,
    required List<Tuple2<UserCourse, Course>> userCourse,
    required bool isFetching,
    required bool hasError,
  }) = _Initial;

  factory SchoolOfferState.initial() => const SchoolOfferState(
        courses: [],
        userCourse: [],
        isFetching: false,
        hasError: false,
      );
}
