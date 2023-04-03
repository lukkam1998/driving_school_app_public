import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../app_models/user_models/user_model.dart';
import '../user_data_service.dart';

part 'user_data_service_state.dart';
part 'user_data_service_cubit.freezed.dart';

@injectable
@lazySingleton
class UserDataServiceCubit extends Cubit<UserDataServiceState> {
  final UserDataService _userDataService;
  UserDataServiceCubit(this._userDataService)
      : super(const UserDataServiceState.initial(false, null)) {
    _userDataService.authStream.listen((value) {
      emit(state.copyWith(isLoading: true));
      emit(state.copyWith(isLoading: false, userData: value));
    });
  }
}
