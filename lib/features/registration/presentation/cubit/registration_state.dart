part of 'registration_cubit.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial({
    @Default(false) bool progressOn,
    Object? error,
    @Default("") String email,
    @Default("") String password,
    @Default("") String confirmPassword,
    @Default("") String inviteLink,
    String? emailError,
    String? passwordError,
    String? confirmPasswordError,
    String? inviteLinkError,
  }) = _Initial;
}
