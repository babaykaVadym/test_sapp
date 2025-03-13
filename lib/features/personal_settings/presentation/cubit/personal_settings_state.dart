part of 'personal_settings_cubit.dart';

@freezed
class PersonalSettingsState with _$PersonalSettingsState {
  const factory PersonalSettingsState.initial({
    @Default(false) bool progressOn,
    @Default(false) bool update,
    Object? error,
    DateTime? userJoinDate,
    @Default(false) bool userJoinDateError,
    DateTime? userDateBirth,
    @Default(false) bool userDateBirthError,
    int? kidsCount,
    String? maritalStatus,
    String? userGender,
    String? userGenderIdentity,
    int? techAffinity,
  }) = _Initial;
}
