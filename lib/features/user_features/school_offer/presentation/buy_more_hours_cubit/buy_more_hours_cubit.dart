import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:managing_driving_school_app/features/user_features/school_offer/domain/usecases/buy_more_hours_usecase.dart';

import '../../../../../core/app_models/courses/user_course.dart';

part 'buy_more_hours_state.dart';
part 'buy_more_hours_cubit.freezed.dart';

@injectable
class BuyMoreHoursCubit extends Cubit<BuyMoreHoursState> {
  final BuyMoreHoursUsecase _buyMoreHoursUsecase;

  BuyMoreHoursCubit(this._buyMoreHoursUsecase)
      : super(const BuyMoreHoursState.initial());

  void buyMoreHours(
    UserCourse userCourse,
    int numberOfHours,
    int additionalPrice,
  ) async {
    emit(const BuyMoreHoursState.loading());
    final result = await _buyMoreHoursUsecase(
      userCourse,
      numberOfHours,
      additionalPrice,
    );
    result.fold(
      (l) => emit(const BuyMoreHoursState.failure()),
      (r) => emit(const BuyMoreHoursState.success()),
    );
  }
}
