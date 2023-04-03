import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/load_promotions_usecase.dart';
import '../../../../../core/app_models/promotions/promotion_with_course_data.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final LoadPromotionsUsecase _loadPromotionsUsecase;

  HomeBloc(
    this._loadPromotionsUsecase,
  ) : super(HomeState.initial()) {
    on<LoadPromotionsEvent>(_getPromotions);
  }

  void _getPromotions(
    LoadPromotionsEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(HomeState.initial());
    final result = await _loadPromotionsUsecase();
    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          hasError: true,
        ),
      ),
      (promotions) => emit(
        state.copyWith(
          isLoading: false,
          promotions: promotions,
        ),
      ),
    );
  }
}
