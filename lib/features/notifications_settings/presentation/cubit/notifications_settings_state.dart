part of 'notifications_settings_cubit.dart';

@freezed
class NotificationsSettingsState with _$NotificationsSettingsState {
  const factory NotificationsSettingsState.initial({
    @Default(false) bool progressOn,
    @Default(false) bool update,
    Object? error,
    bool? systemNotifications,
    bool? reminder,
  }) = _Initial;
}
