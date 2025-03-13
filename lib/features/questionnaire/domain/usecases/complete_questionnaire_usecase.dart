import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/questionnaire/data/models/questionnaire_model.dart';
import 'package:flutter_app_scarb/features/questionnaire/domain/repositories/questionnaire_repository.dart';

class CompleteQuestionnaireUsecase {
  final QuestionnaireRepository questionnaireRepository;

  const CompleteQuestionnaireUsecase(this.questionnaireRepository);

  Future<Either<ErrorModel, CompleteModel>> completeQuestionnaire({
    required String sessionId,
  }) async {
    return await questionnaireRepository.completeQuestionnaire(
      sessionId: sessionId,
    );
  }
}
