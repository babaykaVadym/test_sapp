import 'package:flutter_app_scarb/core/helper/system.dart';
import 'package:flutter_app_scarb/core/utils/validation_utils.dart';
import 'package:flutter_app_scarb/features/new_password/domain/usecases/clear_email_new_password_usecase.dart';
import 'package:flutter_app_scarb/features/new_password/domain/usecases/get_email_new_password_usecase.dart';
import 'package:flutter_app_scarb/features/new_password/domain/usecases/set_new_password_usecase.dart';
import 'package:flutter_app_scarb/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/app_exception.dart';
import '../../../../core/error/error_handler_util.dart';

part 'new_password_cubit.freezed.dart';
part 'new_password_state.dart';

class NewPasswordCubit extends Cubit<NewPasswordState> {
  NewPasswordCubit() : super(const NewPasswordState.initial());

  SetNewPasswordUsecase setNewPasswordUsecase = sl<SetNewPasswordUsecase>();
  GetEmailNewPasswordUsecase getEmailUsecase = sl<GetEmailNewPasswordUsecase>();
  ClearEmailNewPasswordUsecase clearEmailUsecase =
      sl<ClearEmailNewPasswordUsecase>();

  init({
    String? hash,
    String? email,
  }) async {
    emit(state.copyWith(progressOn: true));

    final emailLocal = await getEmailUsecase.getEmailForRestore();

    emit(state.copyWith(
      hash: hash,
      email: emailLocal ?? email,
    ));
  }

  updateNewPassword({
    String? error,
    String? password,
  }) {
    emit(state.copyWith(
      newPasswordError: error,
      newPassword: password ?? state.newPassword,
    ));
  }

  updateConfirmPassword({
    String? error,
    String? password,
  }) {
    emit(state.copyWith(
      confirmPasswordError: error,
      confirmPassword: password ?? state.confirmPassword,
    ));
  }

  setNewPassword() async {
    try {
      if (validate) {
        return;
      }

      if (state.email == null || state.hash == null) {
        return;
      }

      emit(state.copyWith(
        progressOn: true,
      ));

      final newPasswordResult = await setNewPasswordUsecase.setNewPassword(
        email: state.email!,
        hash: state.hash!,
        newPassword: state.newPassword,
      );

      newPasswordResult.fold(
        (error) {
          setError(
              error: error,
              where: '[ForgotPasswordCubit] restorePassword resetResult');

          return null;
        },
        (data) {
          if (data.success == true) {
            SystemHelper.showSuccessfullyToast();
            emit(state.copyWith(showPopup: true));
          }
        },
      );
    } catch (e, stack) {
      setError(
        error: e,
        stackTrace: stack,
        where: '[NewPasswordCubit] restorePassword',
      );
    }
  }

  bool get validate {
    try {
      String? passwordError =
          ValidationUtils.validatePassword(state.newPassword);

      String? confirmPasswordError = ValidationUtils.validateConfirmPassword(
          state.newPassword, state.confirmPassword);

      emit(state.copyWith(
        newPasswordError: passwordError,
        confirmPasswordError: confirmPasswordError,
      ));

      return passwordError != null || confirmPasswordError != null;
    } catch (e, stack) {
      setError(
        error: e,
        stackTrace: stack,
        where: '[NewPasswordCubit] validate',
      );
    }

    return false;
  }

  updateState({
    bool? showPopup,
    bool? progressOn,
  }) {
    emit(state.copyWith(
      showPopup: showPopup ?? state.showPopup,
      progressOn: progressOn ?? state.progressOn,
    ));
  }

  clearEmail() async {
    await clearEmailUsecase.clearEmailForRestore();
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
              where: where ?? '[NewPasswordCubit] '));
    }
    emit(state.copyWith(
      error: error,
      progressOn: false,
    ));
  }
}
