import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/courses/user_course.dart';
import '../../../../../core/app_models/courses/course.dart';

import '../../../../../core/app_models/promotions/promotion.dart';
import '../../domain/usecases/load_courses_usecase.dart';
import '../../domain/usecases/load_user_courses_usecase.dart';

part 'school_offer_event.dart';
part 'school_offer_state.dart';
part 'school_offer_bloc.freezed.dart';

@injectable
@lazySingleton
class SchoolOfferBloc extends Bloc<SchoolOfferEvent, SchoolOfferState> {
  final LoadCoursesUsecase _loadCoursesUsecase;
  final LoadUserCoursesUsecase _loadUserCoursesUsecase;
  SchoolOfferBloc(
    this._loadCoursesUsecase,
    this._loadUserCoursesUsecase,
  ) : super(SchoolOfferState.initial()) {
    on<LoadCoursesEvent>(_loadCourses);
    on<LoadUserCoursesEvent>(_loadUserCourses);
  }

  void _loadCourses(
    LoadCoursesEvent event,
    Emitter<SchoolOfferState> emit,
  ) async {
    emit(state.copyWith(isFetching: true));
    final result = await _loadCoursesUsecase();
    result.fold(
      (failure) => emit(state.copyWith(hasError: true, isFetching: false)),
      (courses) => emit(state.copyWith(courses: courses, isFetching: false)),
    );
  }

  void _loadUserCourses(
    LoadUserCoursesEvent event,
    Emitter<SchoolOfferState> emit,
  ) async {
    emit(state.copyWith(isFetching: true));
    final result = await _loadUserCoursesUsecase();
    await Future.delayed(const Duration(seconds: 2));
    result.fold(
      (failure) => emit(state.copyWith(hasError: true, isFetching: false)),
      (userCourses) =>
          emit(state.copyWith(userCourse: userCourses, isFetching: false)),
    );
  }
}
