part of 'question_page_cubit.dart';

@freezed
class QuestionPageState with _$QuestionPageState {
  const factory QuestionPageState.initial({
    @Default(true) bool progressOn,
    @Default(false) bool copmlete,
    Object? error,
    @Default([]) List<Question> questions,
    @Default(0) int currentQuestionIndex,
    // @Default(Question()) Question currentQuestion,
  }) = _Initial;
}
