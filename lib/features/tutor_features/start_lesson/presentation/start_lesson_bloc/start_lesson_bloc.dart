import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/lessons/user_course_data.dart';
import '../../domain/usecases/end_lesson_usecase.dart';

import '../../domain/usecases/start_lesson_usecase.dart';

part 'start_lesson_event.dart';
part 'start_lesson_state.dart';
part 'start_lesson_bloc.freezed.dart';

@injectable
class StartLessonBloc extends Bloc<StartLessonEvent, StartLessonState> {
  final EndLessonUsecase _endLessonUsecase;
  final StartLessonUsecase _startLessonUsecase;

  StartLessonBloc(
    this._endLessonUsecase,
    this._startLessonUsecase,
  ) : super(StartLessonState.initial()) {
    on<EndLessonEvent>(_endLesson);
    on<BeginLessonEvent>(_startLesson);
  }

  void _endLesson(
    EndLessonEvent event,
    Emitter<StartLessonState> emit,
  ) async {
    final endTime = DateTime.now();
    final result = await _endLessonUsecase(
      lessonId: event.lessonId,
      userCourseData: event.userCourseData,
      lessonEndTime: endTime,
    );

    result.fold(
      (l) => null, // TODO
      (r) => emit(
        state.copyWith(
          endDate: endTime,
          didEnd: true,
        ),
      ),
    );
  }

  void _startLesson(
    BeginLessonEvent event,
    Emitter<StartLessonState> emit,
  ) async {
    final startTime = DateTime.now();
    final result = await _startLessonUsecase(
      lessonId: event.lessonId,
      userCourseData: event.userCourseData,
      lessonStartTime: startTime,
    );

    result.fold(
      (failure) => emit(
        StartLessonState.initial().copyWith(
          hasError: true,
          errorMessage: failure.errorMessage,
        ),
      ),
      (r) => emit(StartLessonState.initial().copyWith(
        didStart: true,
        startDate: startTime,
      )),
    );
  }
}
