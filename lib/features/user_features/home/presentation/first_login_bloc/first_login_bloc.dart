import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/app_models/user_models/user_model.dart';
import '../../../../../core/services/user_data_service/user_data_service.dart';
import '../../../../../injection_container.dart';
import '../../domain/usecases/update_user_data_usecase.dart';

part 'first_login_bloc.freezed.dart';
part 'first_login_event.dart';
part 'first_login_state.dart';

@injectable
class FirstLoginBloc extends Bloc<FirstLoginEvent, FirstLoginState> {
  final UpdateUserDataUsecase updateUserDataUsecase;
  FirstLoginBloc({
    required this.updateUserDataUsecase,
  }) : super(FirstLoginState.initial()) {
    on<PickPhotoEvent>(_updatePhoto);
    on<UpdateUserDataEvent>(_updateUserData);
  }

  void _updatePhoto(
    PickPhotoEvent event,
    Emitter<FirstLoginState> emit,
  ) {
    emit(state.copyWith(photo: event.file));
  }

  void _updateUserData(
    UpdateUserDataEvent event,
    Emitter<FirstLoginState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await updateUserDataUsecase(
      state.userModel.copyWith(
        birthDate: event.userBirthDate,
        name: event.name,
        surname: event.surname,
      ),
      state.photo,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          hasError: true,
          isLoading: false,
        ),
      ),
      (succcess) => emit(state.copyWith(
        isLoading: false,
        isUpdated: true,
      )),
    );
  }
}
