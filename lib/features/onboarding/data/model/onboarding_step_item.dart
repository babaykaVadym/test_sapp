part of 'onbording_models.dart';

@freezed
class OnboardingStepItem with _$OnboardingStepItem {
  const factory OnboardingStepItem({
    required String label,
    @Default('') String value,
    @Default(0) int priorityValue,
  }) = _OnboardingStepItem;
}
