import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/modify_course_usecase.dart';

import '../../../../../core/app_models/courses/course.dart';

part 'modify_course_state.dart';
part 'modify_course_cubit.freezed.dart';

@injectable
class ModifyCourseCubit extends Cubit<ModifyCourseState> {
  final ModifyCourseUsecase _modifyCourseUsecase;

  ModifyCourseCubit(this._modifyCourseUsecase)
      : super(const ModifyCourseState.initial(false));

  void modifyCourse(Course course) async {
    emit(state.copyWith(isLoading: true));
    final result = await _modifyCourseUsecase(course);
    result.fold(
      (failure) => emit(const ModifyCourseState.failure(false)),
      (success) => emit(const ModifyCourseState.success(false)),
    );
  }
}
