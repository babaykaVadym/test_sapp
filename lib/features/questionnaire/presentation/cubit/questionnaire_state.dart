part of 'questionnaire_cubit.dart';

@freezed
class QuestionnaireState with _$QuestionnaireState {
  const factory QuestionnaireState.questions({
    @Default(false) bool progressOn,
    Object? error,
    String? sessionId,
    @Default([]) List<Question> questions,
  }) = _Qquestions;

  const factory QuestionnaireState.complete({
    @Default(false) bool progressOn,
    Object? error,
    @Default([]) List<Question> questions,
  }) = _Complete;

  const factory QuestionnaireState.init({
    @Default(false) bool progressOn,
    Object? error,
    @Default([]) List<Question> questions,
  }) = _Init;
}
