import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/add_car_usecase.dart';
import '../../domain/usecases/get_cars_usecase.dart';
import '../../domain/usecases/modify_car_usecase.dart';
import '../../domain/usecases/remove_car_usecase.dart';

import '../../domain/entities/car.dart';

part 'cars_event.dart';
part 'cars_state.dart';
part 'cars_bloc.freezed.dart';

@injectable
class CarsBloc extends Bloc<CarsEvent, CarsState> {
  final ModifyCarUsecase _modifyCarUsecase;
  final AddCarUsecase _addCarUsecase;
  final GetCarsUsecase _getCarsUsecase;
  final RemoveCarUsecase _removeCarUsecase;
  CarsBloc(
    this._addCarUsecase,
    this._getCarsUsecase,
    this._modifyCarUsecase,
    this._removeCarUsecase,
  ) : super(CarsState.initial()) {
    on<AddCarEvent>(addCar);
    on<ModifyCarEvent>(modifyCar);
    on<GetCarsEvent>(getCars);
    on<RemoveCarEvent>(removeCar);
  }

  void addCar(AddCarEvent event, Emitter<CarsState> emit) async {
    emit(state.copyWith(isLoading: true));
    final result = await _addCarUsecase(event.car);
    result.fold(
      (fail) => null,
      (succed) => emit(
        state.copyWith(
          isLoading: false,
          actionSucced: true,
        ),
      ),
    );
  }

  void modifyCar(ModifyCarEvent event, Emitter<CarsState> emit) async {
    emit(state.copyWith(isLoading: true));
    final result = await _modifyCarUsecase(event.car);
    result.fold(
      (fail) => null,
      (succed) => emit(
        state.copyWith(
          isLoading: false,
          actionSucced: true,
        ),
      ),
    );
  }

  void removeCar(RemoveCarEvent event, Emitter<CarsState> emit) async {
    emit(state.copyWith(isLoading: true));
    final result = await _removeCarUsecase(event.car);
    result.fold(
      (fail) => null,
      (succed) => emit(
        state.copyWith(
          isLoading: false,
          actionSucced: true,
        ),
      ),
    );
  }

  void getCars(GetCarsEvent event, Emitter<CarsState> emit) async {
    emit(state.copyWith(isLoading: true));
    final cars = await _getCarsUsecase();
    cars.fold(
      (failure) => null,
      (cars) {
        emit(
          state.copyWith(
            isLoading: false,
            cars: cars,
          ),
        );
      },
    );
  }
}
