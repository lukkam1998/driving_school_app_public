import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:managing_driving_school_app/features/owner_features/users_info/domain/usecases/get_user_details_usecase.dart';
import '../../../../../core/app_models/courses/user_course_details.dart';

part 'user_details_event.dart';
part 'user_details_state.dart';
part 'user_details_bloc.freezed.dart';

@injectable
class UserDetailsBloc extends Bloc<UserDetailsEvent, UserDetailsState> {
  final GetUserDetailsUsecase _getUserDetailsUsecase;

  UserDetailsBloc(
    this._getUserDetailsUsecase,
  ) : super(UserDetailsState.initial()) {
    on<GetUserDetailsEvent>(_getUserDetails);
  }

  void _getUserDetails(
    GetUserDetailsEvent event,
    Emitter<UserDetailsState> emit,
  ) async {
    emit(state.copyWith(
      isLoading: true,
      hasError: false,
    ));

    final result = await _getUserDetailsUsecase(
      event.userId,
      event.isTutor,
    );
    result.fold(
      (l) => emit(
        state.copyWith(
          isLoading: false,
          hasError: true,
        ),
      ),
      (userCourseDetails) => emit(
        state.copyWith(
          isLoading: false,
          courses: userCourseDetails,
        ),
      ),
    );
  }
}
