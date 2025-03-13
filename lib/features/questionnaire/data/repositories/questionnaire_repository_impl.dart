import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/core/network/request_handler.dart';
import 'package:flutter_app_scarb/features/questionnaire/data/datasources/questionnaire_remote_data_source.dart';
import 'package:flutter_app_scarb/features/questionnaire/data/models/questionnaire_model.dart';
import 'package:flutter_app_scarb/features/questionnaire/domain/repositories/questionnaire_repository.dart';

class QuestionnaireRepositoryImpl extends QuestionnaireRepository {
  final QuestionnaireRemoteDataSource questionnaireRemoteDataSource;

  QuestionnaireRepositoryImpl({required this.questionnaireRemoteDataSource});

  @override
  Future<Either<ErrorModel, QuestionModel>> answerForQuestion(
      {required String sessionId,
      required String questionId,
      required int value}) async {
    return await questionnaireRemoteDataSource
        .answerForQuestion(
      questionId: questionId,
      sessionId: sessionId,
      value: value,
    )
        .guard((data) {
      QuestionModel model =
          QuestionModel.fromJson(data as Map<String, dynamic>);

      return model;
    });
  }

  @override
  Future<Either<ErrorModel, CompleteModel>> completeQuestionnaire(
      {required String sessionId}) async {
    return await questionnaireRemoteDataSource
        .completeQuestionnaire(sessionId: sessionId)
        .guard((data) {
      CompleteModel model =
          CompleteModel.fromJson(data as Map<String, dynamic>);

      return model;
    });
  }

  @override
  Future<Either<ErrorModel, SurveySessionModel>> getSurvey(
      {required String surveySlug}) async {
    return await questionnaireRemoteDataSource
        .getQuestionnaire(surveySlug: surveySlug)
        .guard((data) {
      SurveySessionModel model =
          SurveySessionModel.fromJson(data as Map<String, dynamic>);

      return model;
    });
  }

  @override
  Future<Either<ErrorModel, QuestionModel>> updateAnswerForQuestion(
      {required String answerId, required int value}) async {
    return await questionnaireRemoteDataSource
        .updateAnswerForQuestion(
      answerId: answerId,
      value: value,
    )
        .guard((data) {
      QuestionModel model =
          QuestionModel.fromJson(data as Map<String, dynamic>);

      return model;
    });
  }
}
