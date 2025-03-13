part of 'profile_settings_cubit.dart';

@freezed
class ProfileSettingsState with _$ProfileSettingsState {
  const factory ProfileSettingsState.initial({
    @Default(false) bool progressOn,
    @Default(false) bool update,
    Object? error,
    String? userName,
    String? userNameError,
    String? email,
    String? avatarPath,
    String? emailError,
  }) = _Initial;
}
