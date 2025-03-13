import 'package:flutter_app_scarb/core/network/api_config.dart';
import 'package:flutter_app_scarb/core/utils/validation_utils.dart';
import 'package:flutter_app_scarb/features/registration/data/models/registration_model.dart';
import 'package:flutter_app_scarb/features/registration/domain/usecases/registration_login_user_usecase.dart';
import 'package:flutter_app_scarb/features/registration/domain/usecases/registration_set_token_local_usecase.dart';
import 'package:flutter_app_scarb/features/registration/domain/usecases/registration_user_data_usecase.dart';
import 'package:flutter_app_scarb/features/sign_in/data/models/sign_in_model.dart';
import 'package:flutter_app_scarb/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/app_exception.dart';
import '../../../../core/error/error_handler_util.dart';

part 'registration_cubit.freezed.dart';
part 'registration_state.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit() : super(const RegistrationState.initial());

  RegistrationUserDataUsecase createUser = sl<RegistrationUserDataUsecase>();
  RegistrationLoginUserUsecase loginUserUsecase =
      sl<RegistrationLoginUserUsecase>();
  RegistrationSetTokenLocalUsecase setTokenLocalUsecase =
      sl<RegistrationSetTokenLocalUsecase>();

  Future<RegistrationModel?> registrationUser() async {
    try {
      emit(state.copyWith(
        progressOn: true,
      ));

      final result = await createUser.registrationUser(
        email: state.email,
        password: state.password,
        inviteCode: state.inviteLink,
      );

      RegistrationModel? resModel = result.fold(
        (error) {
          setError(
              error: error, where: '[RegistrationCubit]  registrationUser');

          return null;
        },
        (data) {
          return data;
        },
      );

      if (resModel != null) {
        final result = await loginUserUsecase.signIn(
          email: state.email,
          password: state.password,
        );

        final SignInModel? resultLogin = result.fold(
          (error) {
            setError(
              error: error,
              where: '[RegistrationCubit] signInUsecase ',
            );
            return null;
          },
          (data) => data,
        );

        if (resultLogin?.refreshToken != null) {
          await setTokenLocalUsecase
              .setRefreshToken(resultLogin!.refreshToken!);
        }
        if (resultLogin?.accessToken != null) {
          ApiConfig.token = resultLogin!.accessToken!;
        }
      }

      emit(state.copyWith(
        progressOn: false,
      ));

      return resModel;
    } catch (e, stack) {
      setError(
          error: e,
          stackTrace: stack,
          where: '[RegistrationCubit] registrationUser');
    }
    return null;
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

  updateInviteLink({
    String? error,
    String? value,
  }) {
    emit(state.copyWith(
      inviteLink: value ?? state.inviteLink,
      inviteLinkError: error,
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

  bool validate() {
    String? passwordError = ValidationUtils.validatePassword(state.password);
    String? emailError = ValidationUtils.validateEmail(state.email);

    String? inviteLinkError =
        ValidationUtils.validateInviteLink(state.inviteLink);

    String? confirmPasswordError = ValidationUtils.validateConfirmPassword(
        state.password, state.confirmPassword);

    emit(state.copyWith(
      emailError: emailError,
      passwordError: passwordError,
      confirmPasswordError: confirmPasswordError,
      inviteLinkError: inviteLinkError,
    ));

    return passwordError != null ||
        emailError != null ||
        inviteLinkError != null ||
        confirmPasswordError != null;
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
              where: where ?? '[RegistrationCubit] '));
    }
    emit(state.copyWith(
      error: error,
      progressOn: false,
    ));
  }
}
