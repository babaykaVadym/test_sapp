part of 'account_settings_cubit.dart';

@freezed
class AccountSettingsState with _$AccountSettingsState {
  const factory AccountSettingsState.initial({
    @Default(false) bool progressOn,
    Object? error,
  }) = _Initial;
}
