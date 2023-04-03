import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/courses/user_course.dart';

import '../../../../../core/app_models/courses/course.dart';
import '../../../../../core/app_models/user_models/user_restricted_model.dart';
import '../../domain/usecases/load_unapproved_courses_usecase.dart';

part 'tutor_take_courses_event.dart';
part 'tutor_take_courses_state.dart';
part 'tutor_take_courses_bloc.freezed.dart';

@injectable
class TutorTakeCoursesBloc
    extends Bloc<TutorTakeCoursesEvent, TutorTakeCoursesState> {
  final LoadUnapprovedCoursesUsecase loadUnapprovedCoursesUsecase;
  TutorTakeCoursesBloc({
    required this.loadUnapprovedCoursesUsecase,
  }) : super(TutorTakeCoursesState.initial()) {
    on<LoadUnapprovedCoursesEvent>(_loadUnapprovedCourses);
  }

  void _loadUnapprovedCourses(
    LoadUnapprovedCoursesEvent event,
    Emitter<TutorTakeCoursesState> emit,
  ) async {
    emit(state.copyWith(isFetching: true));
    final result = await loadUnapprovedCoursesUsecase();
    result.fold(
      (failure) => emit(state.copyWith(hasError: true, isFetching: false)),
      (courses) =>
          emit(state.copyWith(coursesToTake: courses, isFetching: false)),
    );
  }
}
