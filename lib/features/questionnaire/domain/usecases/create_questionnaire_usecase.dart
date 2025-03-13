import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/questionnaire/data/models/questionnaire_model.dart';
import 'package:flutter_app_scarb/features/questionnaire/domain/repositories/questionnaire_repository.dart';

class CreateQuestionnaireUsecase {
  final QuestionnaireRepository questionnaireRepository;

  const CreateQuestionnaireUsecase(this.questionnaireRepository);

  Future<Either<ErrorModel, SurveySessionModel>> getSurvey(
      String surveySlug) async {
    return await questionnaireRepository.getSurvey(
      surveySlug: surveySlug,
    );
  }
}
