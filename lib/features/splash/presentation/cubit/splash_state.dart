part of 'splash_cubit.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial({
    @Default(false) bool progressOn,
    @Default(false) bool goToLogin,
    @Default(false) bool goToHome,
    Object? error,
  }) = _Initial;
}
