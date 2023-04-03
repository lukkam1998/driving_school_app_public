import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/cancel_lesson_usecase.dart';
import '../../domain/usecases/confirm_lesson_usecase.dart';
import '../../domain/usecases/modify_lesson_usecase.dart';
import '../../../../../core/app_models/courses/user_course.dart';
import '../../../../../core/app_models/lessons/user_lesson.dart';
import '../../domain/usecases/plan_lesson_usecase.dart';

part 'plan_lesson_state.dart';
part 'plan_lesson_cubit.freezed.dart';

@injectable
@lazySingleton
class PlanLessonCubit extends Cubit<PlanLessonState> {
  final PlanLessonUsecase _planLessonUsecase;
  final CancelLessonUsecase _cancelLessonUsecase;
  final ModifyLessonUsecase _modifyLessonUsecase;
  final ConfirmLessonUsecase _confirmLessonUsecase;

  PlanLessonCubit(
    this._planLessonUsecase,
    this._cancelLessonUsecase,
    this._modifyLessonUsecase,
    this._confirmLessonUsecase,
  ) : super(const PlanLessonState.initial(false));

  void planLesson(
    DateTime day,
    UserCourse userCourse,
    String startHour,
    String endHour,
  ) async {
    emit(state.copyWith(isLoading: true));
    DateTime endOfLesson =
        DateTime(day.year, day.month, day.day, int.parse(endHour));
    DateTime startOfLesson =
        DateTime(day.year, day.month, day.day, int.parse(startHour));
    final result = await _planLessonUsecase(
      UserLesson(
        lessonId: null,
        dayOfLesson: day,
        endOfLesson: endOfLesson,
        hasTookPlace: false,
        isApproved: false,
        isModified: false,
        startOfLesson: startOfLesson,
        tutorId: userCourse.tutorId!,
        userCourseId: userCourse.userCourseId,
        userId: userCourse.userId,
        isGoingNow: false,
      ),
    );

    result.fold(
      (_) => emit(const PlanLessonState.failure(false)),
      (_) => emit(const PlanLessonState.success(false)),
    );
  }

  void cancelLesson(String lessonId) async {
    emit(state.copyWith(isLoading: true));
    final result = await _cancelLessonUsecase(lessonId);
    result.fold(
      (_) => emit(const PlanLessonState.failure(false)),
      (_) => emit(const PlanLessonState.success(false)),
    );
  }

  void confirmLesson(UserLesson lesson) async {
    emit(state.copyWith(isLoading: true));
    final result = await _confirmLessonUsecase(lesson);
    result.fold(
      (_) => emit(const PlanLessonState.failure(false)),
      (_) => emit(const PlanLessonState.success(false)),
    );
  }

  void modifyLesson(
    String startHour,
    String endHour,
    UserLesson lesson,
  ) async {
    final day = lesson.dayOfLesson;
    emit(state.copyWith(isLoading: true));
    DateTime endOfLesson =
        DateTime(day.year, day.month, day.day, int.parse(endHour));
    DateTime startOfLesson =
        DateTime(day.year, day.month, day.day, int.parse(startHour));

    final modifiedLesson =
        lesson.copyWith(startOfLesson: startOfLesson, endOfLesson: endOfLesson);
    final result = await _modifyLessonUsecase(modifiedLesson);
    result.fold(
      (_) => emit(const PlanLessonState.failure(false)),
      (_) => emit(const PlanLessonState.success(false)),
    );
  }
}
