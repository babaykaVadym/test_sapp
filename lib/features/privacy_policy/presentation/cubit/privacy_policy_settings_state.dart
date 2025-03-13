part of 'privacy_policy_settings_cubit.dart';

@freezed
class PrivacyPolicySettingsState with _$PrivacyPolicySettingsState {
  const factory PrivacyPolicySettingsState.initial({
    @Default(false) bool progressOn,
    Object? error,
  }) = _Initial;
}
