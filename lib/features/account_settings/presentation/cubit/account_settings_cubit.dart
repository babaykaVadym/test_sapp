import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/navigation_bar/cubit/navigation_bar_cubit.dart';
import 'package:flutter_app_scarb/injection_container.dart';
import 'package:flutter_app_scarb/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/error/app_exception.dart';
import '../../../../core/error/error_handler_util.dart';

part 'account_settings_cubit.freezed.dart';
part 'account_settings_state.dart';

class AccountSettingsCubit extends Cubit<AccountSettingsState> {
  AccountSettingsCubit() : super(const AccountSettingsState.initial());

  Future<void> logOut(BuildContext context) async {
    try {
      sl<SharedPreferences>().clear();

      context.read<NavigationBarCubit>().resetState();
      context.go(Routes.signInPath);
    } catch (e, stack) {
      setError(
          error: e, stackTrace: stack, where: '[AccountSettingsCubit] logOut');
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
              where: where ?? '[AccountSettingsCubit] '));
    }
    emit(state.copyWith(
      error: error,
      progressOn: false,
    ));
  }
}
