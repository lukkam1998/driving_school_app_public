import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/get_ongoing_lessons_usecase.dart';

part 'owner_home_event.dart';
part 'owner_home_state.dart';
part 'owner_home_bloc.freezed.dart';

@injectable
class OwnerHomeBloc extends Bloc<OwnerHomeEvent, OwnerHomeState> {
  final GetOngoingLessonsUsecase _getOngoingLessonsUsecase;

  OwnerHomeBloc(
    this._getOngoingLessonsUsecase,
  ) : super(OwnerHomeState.initial()) {
    on<GetOngoingLessonsEvent>(getOngoingLessons);
  }

  void getOngoingLessons(
    GetOngoingLessonsEvent event,
    Emitter<OwnerHomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await _getOngoingLessonsUsecase();
    result.fold(
      (failure) => null //TODO
      ,
      (stream) => emit(state.copyWith(
        lessonStream: stream,
        isLoading: false,
      )),
    );
  }
}
