import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/courses/user_course.dart';
import '../../domain/usecases/take_course_usecase.dart';

part 'take_course_state.dart';
part 'take_course_cubit.freezed.dart';

@injectable
class TakeCourseCubit extends Cubit<TakeCourseState> {
  final TakeCourseUsecase takeCourseUsecase;
  TakeCourseCubit({
    required this.takeCourseUsecase,
  }) : super(const TakeCourseState.initial(false));

  void takeCourse(UserCourse userCourse) async {
    emit(state.copyWith(isLoading: true));
    final result = await takeCourseUsecase(userCourse);
    result.fold(
      (failure) => emit(const TakeCourseState.failure(false)),
      (success) => emit(const TakeCourseState.success(false)),
      //reload courses
    );
  }
}
