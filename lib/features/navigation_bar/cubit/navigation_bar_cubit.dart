import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/account_settings/presentation/screens/account_settings_screen.dart';
import 'package:flutter_app_scarb/features/journey_general/presentation/screens/journey_general_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/app_exception.dart';
import '../../../../core/error/error_handler_util.dart';

part 'navigation_bar_cubit.freezed.dart';
part 'navigation_bar_state.dart';

class NavigationBarCubit extends Cubit<NavigationBarState> {
  NavigationBarCubit()
      : super(const NavigationBarState.initial(listOfWidget: [
          JourneyGeneralScreen(),
          SizedBox(),
          SizedBox(),
          SizedBox(),
          AccountSettingsScreen(),
        ]));

  updateState(int index) {
    emit(state.copyWith(
      indexOfTapped: index,
    ));
  }

  void resetState() {
    emit(NavigationBarState.initial(listOfWidget: state.listOfWidget));
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
              where: where ?? '[NavigationBarCubit] '));
    }
    emit(state.copyWith(
      error: error,
      progressOn: false,
    ));
  }
}
