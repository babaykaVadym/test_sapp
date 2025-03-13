import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/data/models/questionnaire_without_diagnosis_model.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/domain/repositories/questionnaire_without_diagnosis_repository.dart';

class InitQuestionnaireUsecase {
  final QuestionnaireWithoutDiagnosisRepository questionnaireRepository;

  const InitQuestionnaireUsecase(this.questionnaireRepository);

  Future<Either<ErrorModel, InitialSurveyModel>> initialSurvey() async {
    return await questionnaireRepository.initialSurvey();
  }
}
