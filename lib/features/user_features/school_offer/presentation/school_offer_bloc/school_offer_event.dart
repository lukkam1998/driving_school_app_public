part of 'school_offer_bloc.dart';

@freezed
class SchoolOfferEvent with _$SchoolOfferEvent {
  const factory SchoolOfferEvent.loadCourses() = LoadCoursesEvent;
  const factory SchoolOfferEvent.loadUserCourses() = LoadUserCoursesEvent;
}
