import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/app_models/failure.dart';
import '../../../../../core/app_models/user_models/user_model.dart';
import '../../domain/usecases/get_instructors_info_usecase.dart';
import '../../domain/usecases/get_standard_users_info_usecase.dart';

part 'users_info_event.dart';
part 'users_info_state.dart';
part 'users_info_bloc.freezed.dart';

@injectable
class UsersInfoBloc extends Bloc<UsersInfoEvent, UsersInfoState> {
  final GetInstructorsInfoUsecase _getInstructorsInfoUsecase;
  final GetStandardUsersInfoUsecase _getStandardUsersInfoUsecase;

  UsersInfoBloc(
    this._getInstructorsInfoUsecase,
    this._getStandardUsersInfoUsecase,
  ) : super(UsersInfoState.initial()) {
    on<GetUsersInfoEvent>(loadUsersInfo);
  }

  void loadUsersInfo(
    GetUsersInfoEvent event,
    Emitter<UsersInfoState> emit,
  ) async {
    Either<Failure, List<UserModel>> data;
    emit(state.copyWith(isLoading: true));
    if (event.isInstructorsPreview) {
      data = await _getInstructorsInfoUsecase();
    } else {
      data = await _getStandardUsersInfoUsecase();
    }

    data.fold(
      (failure) => null,
      (listOfUsers) => emit(
        state.copyWith(
          usersInfo: listOfUsers,
          isLoading: false,
        ),
      ),
    );
  }
}
