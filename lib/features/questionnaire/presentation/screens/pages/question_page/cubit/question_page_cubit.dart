import 'package:flutter_app_scarb/core/error/app_exception.dart';
import 'package:flutter_app_scarb/core/error/error_handler_util.dart';
import 'package:flutter_app_scarb/features/questionnaire/data/models/questionnaire_model.dart';
import 'package:flutter_app_scarb/features/questionnaire/domain/usecases/answer_for_question_usecase.dart';
import 'package:flutter_app_scarb/features/questionnaire/domain/usecases/update_answer_questionnaire_usecase.dart';
import 'package:flutter_app_scarb/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_page_cubit.freezed.dart';
part 'question_page_state.dart';

class QuestionPageCubit extends Cubit<QuestionPageState> {
  QuestionPageCubit(
    List<Question> questions,
  ) : super(QuestionPageState.initial(
          questions: questions,
        ));

  AnswerForQuestionUsecase answerQuestionnaire = sl<AnswerForQuestionUsecase>();

  UpdateAnswerQuestionnaireUsecase updateAnswerQuestionnaireUsecase =
      sl<UpdateAnswerQuestionnaireUsecase>();

  List<ImageForScreenModel> temporarilyInagesList = [];

  goToPrevStep() {
    final index = state.currentQuestionIndex - 1;
    if (index >= 0) {
      emit(state.copyWith(
        currentQuestionIndex: index,
      ));
    }
  }

  Future<bool> updateanswerToQuestion({
    required String questionId,
    required int value,
    required String sessionId,
    required int indexAnswerButton,
    required String answerId,
  }) async {
    try {
      emit(state.copyWith(
        progressOn: true,
      ));

      final result = await updateAnswerQuestionnaireUsecase
          .updateAnswerForQuestion(answerId: answerId, value: value);

      bool success = result.fold((failure) {
        setError(error: failure);

        return false;
      }, (data) {
        if (state.currentQuestionIndex == state.questions.length - 1) {
          emit(state.copyWith(
            copmlete: true,
          ));
          return false;
        } else {
          List<Question> listQuestions = [...state.questions];

          Question question =
              listQuestions.removeAt(state.currentQuestionIndex);
          listQuestions.insert(
              state.currentQuestionIndex,
              question.copyWith(
                answerId: data.id,
                indexAnswerButton: indexAnswerButton,
              ));

          final index = state.currentQuestionIndex + 1;
          emit(state.copyWith(
            currentQuestionIndex: index,
            progressOn: false,
            questions: listQuestions,
          ));
          return true;
        }
      });
      return success;
    } catch (e, stack) {
      setError(
          error: e,
          stackTrace: stack,
          where: '[QuestionPageCubit] updateanswerToQuestion');
    }
    return false;
  }

  Future<bool> answerToQuestion({
    required String questionId,
    required int value,
    required String sessionId,
    required int indexAnswerButton,
  }) async {
    try {
      emit(state.copyWith(
        progressOn: true,
      ));

      final result = await answerQuestionnaire.answerForQuestion(
          questionId: questionId, value: value, sessionId: sessionId);

      bool success = result.fold((failure) {
        setError(error: failure);
        return false;
      }, (data) {
        if (state.currentQuestionIndex == state.questions.length - 1) {
          emit(state.copyWith(
            copmlete: true,
          ));
          return false;
        } else {
          List<Question> listQuestions = [...state.questions];

          Question question =
              listQuestions.removeAt(state.currentQuestionIndex);
          listQuestions.insert(
              state.currentQuestionIndex,
              question.copyWith(
                answerId: data.id,
                indexAnswerButton: indexAnswerButton,
              ));

          final index = state.currentQuestionIndex + 1;
          emit(state.copyWith(
            currentQuestionIndex: index,
            progressOn: false,
            questions: listQuestions,
          ));
          return true;
        }
      });
      return success;
    } catch (e, stack) {
      setError(
          error: e,
          stackTrace: stack,
          where: '[QuestionPageCubit] answerToQuestion');
    }
    return false;
  }

  setError({
    Object? error,
    StackTrace? stackTrace,
    String? where,
  }) {
    if (error != null) {
      ErrorHandler.catchError(error, stackTrace,
          appException: AppException(
              error: error,
              stackTrace: stackTrace,
              where: where ?? '[QuestionPageCubit] '));
    }
    emit(state.copyWith(
      error: error,
      progressOn: false,
    ));
  }
}
