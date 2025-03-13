import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/data/models/questionnaire_without_diagnosis_model.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/domain/usecases/init_questionnaire_usecase.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/presentation/widgets/questionnaire_mixin_random_images_selector.dart';
import 'package:flutter_app_scarb/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/app_exception.dart';
import '../../../../core/error/error_handler_util.dart';

part 'questionnaire_without_diagnosis_cubit.freezed.dart';
part 'questionnaire_without_diagnosis_state.dart';

class QuestionnaireWithoutDiagnosisCubit
    extends Cubit<QuestionnaireWithoutDiagnosisState>
    with QuestionnaireRandomImagesSelectorMixin {
  QuestionnaireWithoutDiagnosisCubit()
      : super(const QuestionnaireWithoutDiagnosisState.initial());

  InitQuestionnaireUsecase initQuestionnaireUsecase =
      sl<InitQuestionnaireUsecase>();

  PageController pageController = PageController();

  void resetState() {
    emit(const QuestionnaireWithoutDiagnosisState.initial());
  }

  Future<bool> initSurvey() async {
    try {
      emit(state.copyWith(progressOn: true));

      final initResut = await initQuestionnaireUsecase.initialSurvey();

      bool? res = initResut.fold((failure) => setError(error: failure), (data) {
        List<QuestionModel> questionsBus = [];

        for (QuestionModel element in (data.questions ?? [])) {
          questionsBus.add(element.copyWith(
            image: getQuestionImage,
          ));
        }

        emit(
          state.copyWith(
            questions: questionsBus,
            interpretationRules: data.interpretationRules ?? [],
            mentalStates: data.mentalStates ?? [],
          ),
        );
        return true;
      });
      emit(state.copyWith(progressOn: false));
      return res ?? false;
    } catch (e, stack) {
      setError(
          error: e,
          stackTrace: stack,
          where: '[QuestionnaireWithoutDiagnosisCubit] getData');
    }
    return false;
  }

  goToPrevStep() {
    final index = state.currentQuestionIndex - 1;
    if (index >= 0) {
      emit(state.copyWith(
        currentQuestionIndex: index,
      ));
    }
  }

  answerToQuestion({
    required int value,
  }) {
    List<QuestionModel> listQuestions = [...state.questions];

    QuestionModel question = listQuestions.removeAt(state.currentQuestionIndex);

    listQuestions.insert(
        state.currentQuestionIndex,
        question.copyWith(
          valueAnswerButton: value,
        ));
    emit(state.copyWith(
      questions: listQuestions,
    ));
  }

  nextPage() {
    emit(state.copyWith(currentQuestionIndex: state.currentQuestionIndex + 1));

    pageController.nextPage(
      duration: const Duration(milliseconds: 260),
      curve: Curves.easeInOut,
    );
  }

  getResult() {
    List<QuestionnaireDiagnosisResultModel> resultBus = [];

    for (var question in state.questions) {
      final previusItem = resultBus.firstWhereOrNull(
        (p0) => p0.slug == question.mentalStateSlug,
      );

      if (previusItem == null) {
        int maxV = 0;
        int minV = 0;

        final interpretationRulesList = state.interpretationRules.where(
          (p0) => p0.mentalStateSlug == question.mentalStateSlug,
        );

        final mentalStates = state.mentalStates.firstWhereOrNull(
          (mental) => mental.slug == question.mentalStateSlug,
        );

        for (var el in interpretationRulesList) {
          minV = minV < (el.minScore ?? 0) ? minV : (el.minScore ?? 0);
          maxV = maxV > (el.maxScore ?? 0) ? maxV : (el.maxScore ?? 0);
        }

        resultBus.add(QuestionnaireDiagnosisResultModel(
          chosenValue: question.valueAnswerButton ?? 0,
          slug: question.mentalStateSlug,
          mentalDescription: mentalStates?.description,
          title: mentalStates?.title,
          maxValue: maxV,
          minValue: minV,
        ));
      } else {
        final index = resultBus.indexOf(previusItem);
        resultBus.removeAt(index);

        final value =
            previusItem.chosenValue + (question.valueAnswerButton ?? 0);

        resultBus.insert(index, previusItem.copyWith(chosenValue: value));
      }
    }

    for (var i = 0; i < resultBus.length; i++) {
      QuestionnaireDiagnosisResultModel item = resultBus[i];

      final interpretationRulesM = state.interpretationRules.firstWhereOrNull(
        (p0) =>
            item.chosenValue >= (p0.minScore ?? 0) &&
            item.chosenValue <= (p0.maxScore ?? 0) &&
            p0.mentalStateSlug == item.slug,
      );
      if (interpretationRulesM != null) {
        item = item.copyWith(
          rulsDescription: interpretationRulesM.description,
          level: interpretationRulesM.description,
        );
        resultBus.removeAt(i);

        resultBus.insert(i, item);
      }
    }
    emit(state.copyWith(
      showResultPage: true,
      results: resultBus,
    ));
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
              where: where ?? '[QuestionnaireWithoutDiagnosisCubit] '));
    }
    emit(state.copyWith(
      error: error,
      progressOn: false,
    ));
  }
}
