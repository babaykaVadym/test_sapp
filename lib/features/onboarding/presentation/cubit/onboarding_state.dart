part of 'onboarding_cubit.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial({
    @Default(false) bool progressOn,
    @Default(0) int pageIdnex,
    @Default(9) int totalPages,
    Object? error,
    @Default('') String userName,
    DateTime? userJoinDate,
    @Default(false) bool userJoinDateError,
    DateTime? userDateBirth,
    @Default(false) bool userDateBirthError,
    int? jumpToPage,
    int? techAffinity,
    int? kidsCount,
    String? maritalStatus,
    String? userGender,
    String? userGenderIdentity,
  }) = _Initial;
}
