import 'package:dio/dio.dart';
import 'package:flutter_app_scarb/core/network/endpoints.dart';

import '../../../../core/network/rest_client.dart';
import '../../../../injection_container.dart';

abstract class QuestionnaireWithoutDiagnosisRemoteDataSource {
  Future<Response> initialSurvey();
}

class QuestionnaireWithoutDiagnosisRemoteDataSourceImpl
    implements QuestionnaireWithoutDiagnosisRemoteDataSource {
  final DioClient dioClient = sl<DioClient>();

  QuestionnaireWithoutDiagnosisRemoteDataSourceImpl();

  @override
  Future<Response> initialSurvey() async {
    final response = await dioClient.get(
      ApiType.protected,
      '${EndPoints.surveySessions}/initial-survey',
    );
    return response;
  }
}
