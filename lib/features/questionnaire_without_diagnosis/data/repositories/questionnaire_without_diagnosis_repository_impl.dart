import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/core/network/request_handler.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/data/datasources/questionnaire_without_diagnosis_remote_data_source.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/data/models/questionnaire_without_diagnosis_model.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/domain/repositories/questionnaire_without_diagnosis_repository.dart';

class QuestionnaireWithoutDiagnosisRepositoryImpl
    extends QuestionnaireWithoutDiagnosisRepository {
  final QuestionnaireWithoutDiagnosisRemoteDataSource
      questionnaireRemoteDataSource;

  QuestionnaireWithoutDiagnosisRepositoryImpl(
      {required this.questionnaireRemoteDataSource});

  @override
  Future<Either<ErrorModel, InitialSurveyModel>> initialSurvey() async {
    return await questionnaireRemoteDataSource.initialSurvey().guard((data) {
      InitialSurveyModel model =
          InitialSurveyModel.fromJson(data as Map<String, dynamic>);

      return model;
    });
  }
}
