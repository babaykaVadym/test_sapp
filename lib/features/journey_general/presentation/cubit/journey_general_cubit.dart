import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/features/journey_general/data/models/journey_general_model.dart';
import 'package:flutter_app_scarb/features/journey_general/presentation/widgets/mixin_random_images_selector.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/app_exception.dart';
import '../../../../core/error/error_handler_util.dart';

part 'journey_general_cubit.freezed.dart';
part 'journey_general_state.dart';

class JourneyGeneralCubit extends Cubit<JourneyGeneralState>
    with RandomImagesSelectorMixin {
  JourneyGeneralCubit() : super(const JourneyGeneralState.initial());

  Future<void> getData() async {
    try {
      List<CheckPointModel> checkPointsInitial = [
        CheckPointModel(practices: [
          PracticeModel(
            isCompleted: false,
            image: SvgImages.journeyLockIcon,
          ),
          PracticeModel(
            isCompleted: false,
            image: SvgImages.journeyLockIcon,
          ),
          PracticeModel(
            isCompleted: false,
            image: SvgImages.journeyLockIcon,
          ),
          PracticeModel(
            isCompleted: false,
            image: SvgImages.journeyLockIcon,
          ),
          PracticeModel(
            isCompleted: false,
            image: SvgImages.journeyLockIcon,
          ),
          PracticeModel(
            isCompleted: false,
            image: SvgImages.journeyLockIcon,
          ),
          PracticeModel(
            isCompleted: false,
            image: SvgImages.journeyLockIcon,
          ),
        ]),
      ];

      emit(state.copyWith(
          checkPoints: checkPointsInitial,
          activeTaskList: [const JourneyActiveTaskModel()]));
      //
    } catch (e, stack) {
      setError(
          error: e, stackTrace: stack, where: '[JourneyGeneralCubit] getData');
    }
  }

  setError({
    Object? error,
    StackTrace? stackTrace,
    String? where,
  }) {
    if (error != null) {
      ErrorHandler.catchError(error, stackTrace,
          appException: AppException(
              error: error,
              stackTrace: stackTrace,
              where: where ?? '[JourneyGeneralCubit] '));
    }
    emit(state.copyWith(
      error: error,
      progressOn: false,
    ));
  }
}
