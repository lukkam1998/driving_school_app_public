import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:managing_driving_school_app/features/user_features/school_offer/domain/usecases/drop_out_of_course_usecase.dart';
import '../../../../../core/app_models/courses/course.dart';
import '../../../../../core/app_models/courses/user_course.dart';
import '../../../../../core/app_models/promotions/promotion.dart';
import '../../domain/usecases/enroll_user_to_course_usecase.dart';

part 'school_enroll_course_state.dart';
part 'school_enroll_course_cubit.freezed.dart';

@injectable
class SchoolEnrollCourseCubit extends Cubit<SchoolEnrollCourseState> {
  final EnrollUserToCourseUsecase _enrollUserToCourseUsecase;
  final DropOutOfCourseUsecase _dropOutOfCourseUsecase;
  SchoolEnrollCourseCubit(
    this._enrollUserToCourseUsecase,
    this._dropOutOfCourseUsecase,
  ) : super(const SchoolEnrollCourseState.initial());

  void enrollUserToCourse(Course course, Promotion? promotion) async {
    emit(state.copyWith(isLoading: true));
    final result = await _enrollUserToCourseUsecase(course, promotion);
    result.fold(
      (failure) {
        emit(
          SchoolEnrollCourseState.failure(
            errorMessage: failure.errorMessage,
          ),
        );
      },
      (success) => emit(const SchoolEnrollCourseState.success()),
    );
  }

  void dropOutOfCourse(UserCourse course) async {
    emit(state.copyWith(isLoading: true));
    final result = await _dropOutOfCourseUsecase(course);
    result.fold(
      (failure) {
        emit(
          SchoolEnrollCourseState.failure(
            errorMessage: failure.errorMessage,
          ),
        );
      },
      (success) => emit(const SchoolEnrollCourseState.success()),
    );
  }
}
