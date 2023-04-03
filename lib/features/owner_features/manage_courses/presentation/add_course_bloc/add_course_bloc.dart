import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/add_course_usecase.dart';

import '../../../../../core/app_models/courses/course.dart';

part 'add_course_event.dart';
part 'add_course_state.dart';
part 'add_course_bloc.freezed.dart';

@injectable
class AddCourseBloc extends Bloc<AddCourseEvent, AddCourseState> {
  final AddCourseUsecase _addCourseUsecase;

  AddCourseBloc(
    this._addCourseUsecase,
  ) : super(const AddCourseState.initial(false)) {
    on<AddNewCourseEvent>(_addCourse);
  }

  void _addCourse(
    AddNewCourseEvent event,
    Emitter<AddCourseState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await _addCourseUsecase(event.course);
    result.fold(
      (failure) => emit(const AddCourseState.failure(false)),
      (success) => emit(const AddCourseState.success(false)),
    );
  }
}
