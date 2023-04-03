import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/get_ongoing_courses_usecase.dart';

import '../../../../../core/app_models/courses/course.dart';

part 'manage_courses_event.dart';
part 'manage_courses_state.dart';
part 'manage_courses_bloc.freezed.dart';

@injectable
class ManageCoursesBloc extends Bloc<ManageCoursesEvent, ManageCoursesState> {
  final GetOngoingCoursesUsecase _getOngoingCoursesUsecase;
  ManageCoursesBloc(this._getOngoingCoursesUsecase)
      : super(ManageCoursesState.initial()) {
    on<LoadCoursesEvent>(_getOngoingCourses);
  }

  void _getOngoingCourses(
    LoadCoursesEvent event,
    Emitter<ManageCoursesState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await _getOngoingCoursesUsecase();
    result.fold(
      (failure) => emit(
        state.copyWith(isLoading: false, hasError: true),
      ),
      (courses) => emit(state.copyWith(
        isLoading: false,
        courses: courses,
      )),
    );
  }
}
