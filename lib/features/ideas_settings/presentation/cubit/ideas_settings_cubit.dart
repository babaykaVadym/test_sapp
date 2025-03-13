import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/app_exception.dart';
import '../../../../core/error/error_handler_util.dart';

part 'ideas_settings_cubit.freezed.dart';
part 'ideas_settings_state.dart';

class IdeasSettingsCubit extends Cubit<IdeasSettingsState> {
  IdeasSettingsCubit() : super(const IdeasSettingsState.initial());

  Future<void> getData() async {
    try {
      // emit(result.fold(
      //   (failure) => IdeasSettingsState.error(_mapFailureToMessage(failure)),
      //   (data) => IdeasSettingsState.loaded(data),
      // ));
      //
    } catch (e, stack) {
      setError(
          error: e, stackTrace: stack, where: '[IdeasSettingsCubit] getData');
    }
  }

  sendIdea() async {
    if (state.ideaText.isEmpty) {
      emit(state.copyWith(
        showError: true,
      ));
      return;
    }

    emit(state.copyWith(
      progressOn: true,
    ));

    await Future.delayed(const Duration(seconds: 2));

    emit(state.copyWith(
      progressOn: false,
      showThanks: true,
    ));
  }

  updateState({
    String? ideaText,
  }) {
    emit(state.copyWith(
      ideaText: ideaText ?? state.ideaText,
      showError: ideaText == null ? false : ideaText.isEmpty,
      update: true,
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
              where: where ?? '[IdeasSettingsCubit] '));
    }
    emit(state.copyWith(
      error: error,
      progressOn: false,
    ));
  }
}
