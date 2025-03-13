import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/questionnaire/data/models/questionnaire_model.dart';
import 'package:flutter_app_scarb/features/questionnaire/domain/repositories/questionnaire_repository.dart';

class UpdateAnswerQuestionnaireUsecase {
  final QuestionnaireRepository questionnaireRepository;

  const UpdateAnswerQuestionnaireUsecase(this.questionnaireRepository);

  Future<Either<ErrorModel, QuestionModel>> updateAnswerForQuestion(
      {required String answerId, required int value}) async {
    return await questionnaireRepository.updateAnswerForQuestion(
      answerId: answerId,
      value: value,
    );
  }
}
