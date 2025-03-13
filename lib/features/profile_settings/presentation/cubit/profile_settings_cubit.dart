import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/system.dart';
import 'package:flutter_app_scarb/core/utils/validation_utils.dart';
import 'package:flutter_app_scarb/features/navigation_bar/cubit/navigation_bar_cubit.dart';
import 'package:flutter_app_scarb/features/profile_settings/data/models/profile_settings_model.dart';
import 'package:flutter_app_scarb/features/profile_settings/domain/usecases/delete_profile_data_usecase.dart';
import 'package:flutter_app_scarb/features/profile_settings/domain/usecases/get_profile_settings_data_usecase.dart';
import 'package:flutter_app_scarb/features/profile_settings/domain/usecases/update_profile_settings_data_usecase.dart';
import 'package:flutter_app_scarb/injection_container.dart';
import 'package:flutter_app_scarb/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/error/app_exception.dart';
import '../../../../core/error/error_handler_util.dart';

part 'profile_settings_cubit.freezed.dart';
part 'profile_settings_state.dart';

class ProfileSettingsCubit extends Cubit<ProfileSettingsState> {
  ProfileSettingsCubit() : super(const ProfileSettingsState.initial());

  final GetProfileSettingsDataUsecase _getProfileSettings =
      sl<GetProfileSettingsDataUsecase>();
  final UpdateProfileSettingsDataUsecase _updateProfileSettings =
      sl<UpdateProfileSettingsDataUsecase>();
  final DeleteProfileDataUsecase _deleteProfileDataUsecase =
      sl<DeleteProfileDataUsecase>();

  Future<void> getData() async {
    try {
      emit(state.copyWith(progressOn: true));

      final getSetting = await _getProfileSettings.getPersonalProfile();

      getSetting.fold(
        (failure) => setError(
          error: failure,
          where: '[ProfileSettingsCubit] resModel',
        ),
        (data) {
          emit(state.copyWith(
            progressOn: false,
            email: data.email,
            userName: data.fullName,
          ));
        },
      );
    } catch (e, stack) {
      setError(
          error: e, stackTrace: stack, where: '[ProfileSettingsCubit] getData');
    }
  }

  updateUserName({
    String? error,
    String? userName,
  }) {
    emit(state.copyWith(
      userNameError: error,
      update: true,
      userName: userName ?? state.userName,
    ));
  }

  Future<bool?> saveChange() async {
    try {
      emit(state.copyWith(
        progressOn: true,
      ));
      if (!validate) {
        emit(state.copyWith(
          progressOn: false,
        ));

        return null;
      }

      ProfileSettingsModel profileModel = ProfileSettingsModel(
        fullName: state.userName,
      );

      final result =
          await _updateProfileSettings.updateProfileSettings(profileModel);

      bool? res = result.fold(
        (error) {
          setError(
              error: error,
              where: '[ProfileSettingsCubit] saveChange updateProfileSettings');

          return null;
        },
        (data) {
          emit(state.copyWith(
            update: false,
            email: data.email,
            userName: data.fullName,
          ));
          SystemHelper.showSuccessfullyToast();
          return true;
        },
      );

      emit(state.copyWith(
        progressOn: false,
      ));

      return res;
    } catch (e, stack) {
      setError(
          error: e,
          stackTrace: stack,
          where: '[ProfileSettingsCubit] saveChange');
    }
    return null;
  }

  bool get validate {
    try {
      String? userNameError = ValidationUtils.validateText(state.userName);

      if (userNameError != null) {
        emit(state.copyWith(
          userNameError: userNameError,
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

  Future<void> deleteProfile(BuildContext context) async {
    try {
      final resDelete = await _deleteProfileDataUsecase.deleteProfile();

      resDelete.fold((error) {
        setError(
            error: error,
            where:
                '[ProfileSettingsCubit] deleteProfile _deleteProfileDataUsecase');

        return null;
      }, (data) {
        sl<SharedPreferences>().clear();

        context.read<NavigationBarCubit>().resetState();
        context.go(Routes.signInPath);
      });
    } catch (e, stack) {
      setError(
          error: e,
          stackTrace: stack,
          where: '[ProfileSettingsCubit] deleteProfile');
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
              where: where ?? '[ProfileSettingsCubit] '));
    }
    emit(state.copyWith(
      error: error,
      progressOn: false,
    ));
  }
}
