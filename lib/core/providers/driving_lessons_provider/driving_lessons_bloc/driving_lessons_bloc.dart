import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/lessons/user_course_data.dart';

import '../../../../../core/app_models/lessons/user_lesson.dart';
import '../domain/usecases/load_user_lessons_usecase.dart';

part 'driving_lessons_event.dart';
part 'driving_lessons_state.dart';
part 'driving_lessons_bloc.freezed.dart';

@injectable
@lazySingleton
class DrivingLessonsBloc
    extends Bloc<DrivingLessonsEvent, DrivingLessonsState> {
  final LoadUserLessonsUsecase _loadUserLessonsUsecase;
  DrivingLessonsBloc(
    this._loadUserLessonsUsecase,
  ) : super(DrivingLessonsState.initial()) {
    on<LoadUserLessonsDataEvent>(_loadUserLessonsData);
  }

  void _loadUserLessonsData(
    LoadUserLessonsDataEvent event,
    Emitter<DrivingLessonsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await _loadUserLessonsUsecase();
    result.fold(
      (fail) => emit(state.copyWith(hasError: true, isLoading: false)),
      (listOfCoursesAndLessons) => emit(
        state.copyWith(
          isLoading: false,
          userLessons: listOfCoursesAndLessons.value1,
          userCourses: listOfCoursesAndLessons.value2,
          hasError: false,
        ),
      ),
    );
  }
}
