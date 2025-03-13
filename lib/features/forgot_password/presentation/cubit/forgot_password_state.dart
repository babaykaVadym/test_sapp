part of 'forgot_password_cubit.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState.initial({
    @Default(false) bool progressOn,
    Object? error,
    @Default("") String userEmail,
    String? emailError,
    @Default(false) bool goToCheckEmail,
  }) = _Initial;
}
