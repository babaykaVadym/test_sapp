import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/data/models/questionnaire_without_diagnosis_model.dart';

abstract class QuestionnaireWithoutDiagnosisRepository {
  Future<Either<ErrorModel, InitialSurveyModel>> initialSurvey();
}
