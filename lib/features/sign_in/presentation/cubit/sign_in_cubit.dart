import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/error/app_exception.dart';
import 'package:flutter_app_scarb/core/error/error_handler_util.dart';
import 'package:flutter_app_scarb/core/network/api_config.dart';
import 'package:flutter_app_scarb/core/utils/validation_utils.dart';
import 'package:flutter_app_scarb/features/sign_in/data/models/sign_in_model.dart';
import 'package:flutter_app_scarb/features/sign_in/domain/usecases/sign_in_set_token_local_usecase.dart';
import 'package:flutter_app_scarb/features/sign_in/domain/usecases/sign_in_usecase.dart';
import 'package:flutter_app_scarb/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_cubit.freezed.dart';
part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(const SignInState.initial());

  SignInUsecase signInUsecase = sl<SignInUsecase>();
  SignInSetTokenLocalUsecase setTokenLocalUsecase =
      sl<SignInSetTokenLocalUsecase>();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  Future<bool> signIn() async {
    try {
      emit(state.copyWith(progressOn: true));

      final result = await signInUsecase.signIn(
        email: state.email,
        password: state.password,
      );

      final SignInModel? resModel = result.fold(
        (error) {
          setError(
            error: error,
            where: '[SignInCubit] signInUsecase ',
          );
          return null;
        },
        (data) => data,
      );

      emit(state.copyWith(progressOn: false));

      if (resModel?.refreshToken != null) {
        await setTokenLocalUsecase.setRefreshToken(resModel!.refreshToken!);
      }
      if (resModel?.accessToken != null) {
        ApiConfig.token = resModel!.accessToken!;
      }

      return resModel != null;
    } catch (e, stack) {
      setError(
        error: e,
        stackTrace: stack,
        where: '[SignInCubit] signIn',
      );
    }

    return false;
  }

  updateEmail({
    String? error,
    String? email,
  }) {
    emit(state.copyWith(
      email: email ?? state.email,
      emailError: error,
    ));
  }

  updatePassword({
    String? error,
    String? password,
  }) {
    emit(state.copyWith(
      passwordError: error,
      password: password ?? state.password,
    ));
  }

  bool validate() {
    try {
      String? emailError = ValidationUtils.validateEmail(state.email);
      String? passwordError = ValidationUtils.validatePassword(state.password);

      if (emailError != null && passwordError != null) {
        emit(state.copyWith(
          emailError: emailError,
          passwordError: passwordError,
        ));

        return false;
      }
      return true;
    } catch (e, stack) {
      setError(
        error: e,
        stackTrace: stack,
        where: '[SignInCubit] signIn',
      );
    }

    return false;
  }

  void setError({
    Object? error,
    StackTrace? stackTrace,
    String? where,
  }) {
    if (error != null) {
      ErrorHandler.catchError(
        error,
        stackTrace,
        appException: AppException(
          error: error,
          stackTrace: stackTrace,
          where: where ?? '[SignInCubit] ',
        ),
      );
    }
    emit(state.copyWith(
      error: error,
      progressOn: false,
    ));
  }
}
