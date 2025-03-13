import 'package:flutter/foundation.dart';
import 'package:flutter_app_scarb/core/helper/system.dart';
import 'package:flutter_app_scarb/core/utils/validation_utils.dart';
import 'package:flutter_app_scarb/features/forgot_password/domain/usecases/restore_password_usecase.dart';
import 'package:flutter_app_scarb/features/forgot_password/domain/usecases/store_email_for_restore_local_usecase.dart';
import 'package:flutter_app_scarb/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/app_exception.dart';
import '../../../../core/error/error_handler_util.dart';

part 'forgot_password_cubit.freezed.dart';
part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(const ForgotPasswordState.initial());

  RestorePasswordUsecase restorePasswordUsecase = sl<RestorePasswordUsecase>();
  StoreEmailForRestoreLocalUsecase storeEmailForRestoreLocalUsecase =
      sl<StoreEmailForRestoreLocalUsecase>();

  updateEmail({
    String? error,
    String? email,
  }) {
    emit(state.copyWith(
      userEmail: email ?? state.userEmail,
      emailError: error,
    ));
  }

  void resetState() {
    emit(const ForgotPasswordState.initial());
  }

  restorePassword() async {
    try {
      if (!validate) {
        return;
      }

      emit(state.copyWith(
        progressOn: true,
      ));
      late String platform;

      if (kIsWeb) {
        platform = 'web';
      } else {
        platform = 'mobile';
      }

      final resetResult = await restorePasswordUsecase.restorePassword(
        email: state.userEmail,
        platform: platform,
      );

      resetResult.fold(
        (error) {
          setError(
              error: error,
              where: '[ForgotPasswordCubit] restorePassword resetResult');

          return null;
        },
        (data) async {
          if (data.success == true) {
            SystemHelper.showSuccessfullyToast();
            await storeEmailForRestoreLocalUsecase
                .storeEmailForRestore(state.userEmail);
            emit(state.copyWith(goToCheckEmail: true));
          }
        },
      );
    } catch (e, stack) {
      setError(
        error: e,
        stackTrace: stack,
        where: '[ForgotPasswordCubit] restorePassword',
      );
    }
  }

  updateState({
    bool? goToCheckEmail,
    bool? progressOn,
  }) {
    emit(state.copyWith(
      goToCheckEmail: goToCheckEmail ?? state.goToCheckEmail,
      progressOn: progressOn ?? state.progressOn,
    ));
  }

  bool get validate {
    try {
      String? emailError = ValidationUtils.validateEmail(state.userEmail);

      if (emailError != null) {
        emit(state.copyWith(
          emailError: emailError,
        ));

        return false;
      }
      return true;
    } catch (e, stack) {
      setError(
        error: e,
        stackTrace: stack,
        where: '[ForgotPasswordCubit] validate',
      );
    }

    return false;
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
              where: where ?? '[ForgotPasswordCubit] '));
    }
    emit(state.copyWith(
      error: error,
      progressOn: false,
    ));
  }
}
