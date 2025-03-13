import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/questionnaire/data/models/questionnaire_model.dart';

abstract class QuestionnaireRepository {
  Future<Either<ErrorModel, SurveySessionModel>> getSurvey({
    required String surveySlug,
  });

  Future<Either<ErrorModel, QuestionModel>> answerForQuestion(
      {required String sessionId,
      required String questionId,
      required int value});

  Future<Either<ErrorModel, QuestionModel>> updateAnswerForQuestion(
      {required String answerId, required int value});

  Future<Either<ErrorModel, CompleteModel>> completeQuestionnaire({
    required String sessionId,
  });
}
