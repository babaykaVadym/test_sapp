import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/app_exception.dart';
import '../../../../core/error/error_handler_util.dart';

part 'emotion_state_cubit.freezed.dart';
part 'emotion_state_state.dart';

class EmotionStateCubit extends Cubit<EmotionStateState> {
  EmotionStateCubit() : super(const EmotionStateState.initial()) {
    setData();
  }

  Future<void> setData() async {
    try {
      emit(state.copyWith(
        emotions: emotionConst,
        maxEmotionIndex: emotionConst.length,
      ));
    } catch (e, stack) {
      setError(
          error: e, stackTrace: stack, where: '[EmotionStateCubit] setData');
    }
  }

  updateIndex(int index) {
    emit(state.copyWith(
      currentEmotionIndex: index,
      currentEmotion: state.emotions[index],
    ));
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
              where: where ?? '[EmotionStateCubit] '));
    }
    emit(state.copyWith(
      error: error,
      progressOn: false,
    ));
  }

  List<String> emotionConst = [
    LocaleKeys.login_depressedState.tr(),
    LocaleKeys.login_sadState.tr(),
    LocaleKeys.login_buoyantState.tr(),
    LocaleKeys.login_cheerfulState.tr(),
  ];
}
