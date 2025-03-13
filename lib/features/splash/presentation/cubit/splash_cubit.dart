import 'package:flutter_app_scarb/core/network/api_config.dart';
import 'package:flutter_app_scarb/features/splash/domain/usecases/delete_token_local_usecase.dart';
import 'package:flutter_app_scarb/features/splash/domain/usecases/get_token_local_usecase.dart';
import 'package:flutter_app_scarb/features/splash/domain/usecases/refresh_tokent_remote_usecase.dart';
import 'package:flutter_app_scarb/features/splash/domain/usecases/set_token_local_usecase.dart';
import 'package:flutter_app_scarb/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/app_exception.dart';
import '../../../../core/error/error_handler_util.dart';

part 'splash_cubit.freezed.dart';
part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState.initial());

  RefreshTokentRemoteUsecase refreshTokentRemoteUsecase =
      sl<RefreshTokentRemoteUsecase>();
  GetTokenLocalUsecase getTokenLocalUsecase = sl<GetTokenLocalUsecase>();
  SetTokenLocalUsecase setTokenLocalUsecase = sl<SetTokenLocalUsecase>();
  DeleteTokenLocalUsecase deleteTokenLocalUsecase =
      sl<DeleteTokenLocalUsecase>();

  Future<void> init() async {
    try {
      final token = await getTokenLocalUsecase.getRefreshToken();

      if (token?.isNotEmpty ?? false) {
        final result = await refreshTokentRemoteUsecase.refreshToken(token!);

        result.fold(
          (error) {
            setError(
              error: error,
              where: '[SplashCubit] refreshToken ',
            );
            emit(state.copyWith(goToLogin: true));
          },
          (data) async {
            if (data.accessToken == null) {
              emit(state.copyWith(goToLogin: true));
              return;
            }
            ApiConfig.token = data.accessToken!;
            await setTokenLocalUsecase
                .setRefreshToken(data.refreshToken ?? token);

            emit(state.copyWith(goToHome: true));
          },
        );
      } else {
        emit(state.copyWith(goToLogin: true));
      }
    } catch (e, stack) {
      setError(error: e, stackTrace: stack, where: '[SplashCubit] init');
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
              where: where ?? '[SplashCubit] '));
    }
    emit(state.copyWith(
      error: error,
      progressOn: false,
    ));
  }
}
