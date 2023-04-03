import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:managing_driving_school_app/features/owner_features/manage_courses/domain/usecases/add_promotion_usecase.dart';
import 'package:managing_driving_school_app/features/owner_features/manage_courses/domain/usecases/edit_promotion_usecase.dart';
import 'package:managing_driving_school_app/features/owner_features/manage_courses/domain/usecases/end_promotion_usecase.dart';
import 'package:managing_driving_school_app/features/owner_features/manage_courses/domain/usecases/get_promotions_usecase.dart';

import '../../../../../core/app_models/promotion_action_result.dart';
import '../../../../../core/app_models/promotions/edit_promotion_data.dart';
import '../../../../../core/app_models/promotions/promotion.dart';
import '../../../../../core/app_models/promotions/promotion_add_data.dart';
import '../../../../../generated/l10n.dart';

part 'promotions_manager_event.dart';
part 'promotions_manager_state.dart';
part 'promotions_manager_bloc.freezed.dart';

@injectable
class PromotionsManagerBloc
    extends Bloc<PromotionsManagerEvent, PromotionsManagerState> {
  final EditPromotionUsecase _editPromotionUsecase;
  final AddPromotionUsecase _addPromotionUsecase;
  final EndPromotionUsecase _endPromotionUsecase;
  final GetPromotionsUsecase _getPromotionsUsecase;

  PromotionsManagerBloc(
    this._addPromotionUsecase,
    this._editPromotionUsecase,
    this._endPromotionUsecase,
    this._getPromotionsUsecase,
  ) : super(PromotionsManagerState.initial()) {
    on<AddPromotionEvent>(_addPromotion);
    on<EditPromotionEvent>(_editPromotion);
    on<EndPromotionEvent>(_endPromotion);
    on<GetPromotionsEvent>(_getPromotions);
  }

  void _addPromotion(
    AddPromotionEvent event,
    Emitter<PromotionsManagerState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await _addPromotionUsecase(event.promotion);
    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          hasError: true,
          actionResult: PromotionsActionResult(
            PromotionActionType.add,
            false,
            S().failed_to_add_promotion,
          ),
        ),
      ),
      (success) => emit(
        state.copyWith(
          isLoading: false,
          actionResult: PromotionsActionResult(
            PromotionActionType.add,
            true,
            S().successfully_added_promotion,
          ),
        ),
      ),
    );
  }

  void _editPromotion(
    EditPromotionEvent event,
    Emitter<PromotionsManagerState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await _editPromotionUsecase(event.promotion);
    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          hasError: true,
          actionResult: PromotionsActionResult(
            PromotionActionType.update,
            false,
            S().error_try_again,
          ),
        ),
      ),
      (success) => emit(
        state.copyWith(
          isLoading: false,
          actionResult: PromotionsActionResult(
            PromotionActionType.update,
            true,
            S().successfully_edited_promotion,
          ),
        ),
      ),
    );
  }

  void _endPromotion(
    EndPromotionEvent event,
    Emitter<PromotionsManagerState> emit,
  ) async {}

  void _getPromotions(
    GetPromotionsEvent event,
    Emitter<PromotionsManagerState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await _getPromotionsUsecase();
    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          hasError: true,
        ),
      ),
      (listOfPromotions) {
        final expiredPromotionsList = listOfPromotions
            .where(
              (element) => element.expiryDate.toDate().isBefore(
                    Timestamp.now().toDate(),
                  ),
            )
            .toList();
        final livePromotionsList = listOfPromotions
            .where(
              (element) => element.expiryDate.toDate().isAfter(
                    Timestamp.now().toDate(),
                  ),
            )
            .toList();

        emit(
          state.copyWith(
            isLoading: false,
            expiredPromotions: expiredPromotionsList,
            runningPromotions: livePromotionsList,
          ),
        );
      },
    );
  }
}
