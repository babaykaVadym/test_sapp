import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/app_exception.dart';
import '../../../../core/error/error_handler_util.dart';

part 'notifications_settings_cubit.freezed.dart';
part 'notifications_settings_state.dart';

class NotificationsSettingsCubit extends Cubit<NotificationsSettingsState> {
  NotificationsSettingsCubit()
      : super(const NotificationsSettingsState.initial());

  Future<void> getData() async {
    try {
      // emit(result.fold(
      //   (failure) => NotificationsSettingsState.error(_mapFailureToMessage(failure)),
      //   (data) => NotificationsSettingsState.loaded(data),
      // ));
      //
    } catch (e, stack) {
      setError(
          error: e,
          stackTrace: stack,
          where: '[NotificationsSettingsCubit] getData');
    }
  }

  updateState({
    bool? systemNotifications,
    bool? reminder,
  }) {
    emit(state.copyWith(
      update: true,
      systemNotifications: systemNotifications ?? state.systemNotifications,
      reminder: reminder ?? state.reminder,
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
              where: where ?? '[NotificationsSettingsCubit] '));
    }
    emit(state.copyWith(
      error: error,
      progressOn: false,
    ));
  }
}
