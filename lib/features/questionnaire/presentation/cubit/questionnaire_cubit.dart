import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/features/questionnaire/data/models/questionnaire_model.dart';
import 'package:flutter_app_scarb/features/questionnaire/domain/usecases/answer_for_question_usecase.dart';
import 'package:flutter_app_scarb/features/questionnaire/domain/usecases/complete_questionnaire_usecase.dart';
import 'package:flutter_app_scarb/features/questionnaire/domain/usecases/create_questionnaire_usecase.dart';
import 'package:flutter_app_scarb/features/questionnaire/domain/usecases/update_answer_questionnaire_usecase.dart';
import 'package:flutter_app_scarb/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/app_exception.dart';
import '../../../../core/error/error_handler_util.dart';

part 'questionnaire_cubit.freezed.dart';
part 'questionnaire_state.dart';

class QuestionnaireCubit extends Cubit<QuestionnaireState> {
  QuestionnaireCubit() : super(const QuestionnaireState.init());

  AnswerForQuestionUsecase answerQuestionnaire = sl<AnswerForQuestionUsecase>();
  CompleteQuestionnaireUsecase completeQuestionnaireUsecase =
      sl<CompleteQuestionnaireUsecase>();
  CreateQuestionnaireUsecase createQuestionnaire =
      sl<CreateQuestionnaireUsecase>();
  UpdateAnswerQuestionnaireUsecase updateAnswerQuestionnaireUsecase =
      sl<UpdateAnswerQuestionnaireUsecase>();

  List<ImageForScreenModel> temporarilyInagesList = [];

  Future<void> startQuestionnaire(String surveySlug) async {
    try {
      emit(state.copyWith(
        progressOn: true,
      ));

      if (state.questions.isNotEmpty) {
        emit(const QuestionnaireState.questions(
          progressOn: false,
        ));
        return;
      }

      final result = await createQuestionnaire.getSurvey(surveySlug);

      result.fold((failure) => setError(error: failure), (data) {
        List<Question> questionsBus = [];

        for (Question element in (data.survey?.questions ?? [])) {
          questionsBus.add(element.copyWith(
            image: getRandomImage(),
          ));
        }

        emit(QuestionnaireState.questions(
          questions: questionsBus,
          progressOn: false,
          sessionId: data.session?.id,
        ));
      });
    } catch (e, stack) {
      setError(
          error: e, stackTrace: stack, where: '[QuestionnaireCubit] getData');
    }
  }

  goToInitState() {
    emit(const QuestionnaireState.init());
  }

  completeQuestionnaire(
    String sessionId,
  ) async {
    try {
      emit(state.copyWith(
        progressOn: true,
      ));

      final result = await completeQuestionnaireUsecase.completeQuestionnaire(
          sessionId: sessionId);

      result.fold((failure) => setError(error: failure), (data) {
        emit(const QuestionnaireState.complete(
          progressOn: false,
        ));
      });
    } catch (e, stack) {
      setError(
          error: e,
          stackTrace: stack,
          where: '[QuestionnaireCubit] answerToQuestion');
    }
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
              where: where ?? '[QuestionnaireCubit] '));
    }
    emit(state.copyWith(
      error: error,
      progressOn: false,
    ));
  }

  ImageForScreenModel getRandomImage() {
    if (temporarilyInagesList.isEmpty) {
      temporarilyInagesList = List.from(initInagesList);
    }
    final random = temporarilyInagesList.removeAt(0);
    return random;
  }

  List<ImageForScreenModel> initInagesList = [
    ImageForScreenModel(
      path: SvgImages.questionnaireRainIcon,
    ),
    ImageForScreenModel(
      path: SvgImages.questionnaireDropsIcon,
      height: 135,
      width: 137,
    ),
    ImageForScreenModel(
      path: SvgImages.questionnaireMoonIcon,
    ),
    ImageForScreenModel(
      path: SvgImages.questionnaireSleepsIcon,
      height: 146,
    ),
    ImageForScreenModel(
      path: SvgImages.questionnaireNonIcon,
    ),
    ImageForScreenModel(
      path: SvgImages.questionnaireHeartIcon,
      width: 142,
      height: 140,
    ),
    ImageForScreenModel(
      path: SvgImages.questionnaireArrowsIcons,
    ),
    ImageForScreenModel(
      path: SvgImages.questionnaireCloudsIcon,
    ),
    ImageForScreenModel(
      path: SvgImages.questionnaireCloudIcon,
      width: 161,
      height: 135,
    ),
  ];
}
