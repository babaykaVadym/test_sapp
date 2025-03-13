import 'package:dio/dio.dart';
import 'package:flutter_app_scarb/core/network/endpoints.dart';

import '../../../../core/network/rest_client.dart';
import '../../../../injection_container.dart';

abstract class QuestionnaireRemoteDataSource {
  Future<Response> getQuestionnaire({
    required String surveySlug,
  });
  Future<Response> answerForQuestion(
      {required String sessionId,
      required String questionId,
      required int value});

  Future<Response> updateAnswerForQuestion(
      {required String answerId, required int value});

  Future<Response> completeQuestionnaire({
    required String sessionId,
  });
}

class QuestionnaireRemoteDataSourceImpl
    implements QuestionnaireRemoteDataSource {
  final DioClient dioClient = sl<DioClient>();

  QuestionnaireRemoteDataSourceImpl();

  @override
  Future<Response> answerForQuestion(
      {required String sessionId,
      required String questionId,
      required int value}) async {
    final response = await dioClient.post(
      ApiType.protected,
      '${EndPoints.surveySessions}/answer',
      {
        "sessionId": sessionId,
        "questionId": questionId,
        "value": value,
      },
    );

    return response;
  }

  @override
  Future<Response> completeQuestionnaire({required String sessionId}) async {
    final response = await dioClient.post(
      ApiType.protected,
      '${EndPoints.surveySessions}/$sessionId/complete',
      {},
    );
    return response;
  }

  @override
  Future<Response> getQuestionnaire({required String surveySlug}) async {
    final response = await dioClient.post(
      ApiType.protected,
      '${EndPoints.surveySessions}/$surveySlug/create',
      {},
    );
    return response;
  }

  @override
  Future<Response> updateAnswerForQuestion(
      {required String answerId, required int value}) async {
    final response = await dioClient.put(
      ApiType.protected,
      '${EndPoints.surveySessions}/answer/$answerId',
      {
        "value": value,
      },
    );

    return response;
  }
}
