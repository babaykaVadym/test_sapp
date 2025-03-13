part of 'new_password_cubit.dart';

@freezed
class NewPasswordState with _$NewPasswordState {
  const factory NewPasswordState.initial({
    @Default(false) bool progressOn,
    @Default(false) bool showPopup,
    Object? error,
    @Default('') String newPassword,
    @Default("") String confirmPassword,
    String? newPasswordError,
    String? hash,
    String? email,
    String? confirmPasswordError,
  }) = _Initial;
}
