part of 'ideas_settings_cubit.dart';

@freezed
class IdeasSettingsState with _$IdeasSettingsState {
  const factory IdeasSettingsState.initial({
    @Default(false) bool progressOn,
    @Default(false) bool showThanks,
    @Default(false) bool update,
    @Default(false) bool showError,
    Object? error,
    @Default("") String ideaText,
  }) = _Initial;
}
