import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/questionnaire/data/models/questionnaire_model.dart';
import 'package:flutter_app_scarb/features/questionnaire/domain/repositories/questionnaire_repository.dart';

class AnswerForQuestionUsecase {
  final QuestionnaireRepository questionnaireRepository;

  const AnswerForQuestionUsecase(this.questionnaireRepository);

  Future<Either<ErrorModel, QuestionModel>> answerForQuestion(
      {required String sessionId,
      required String questionId,
      required int value}) async {
    return await questionnaireRepository.answerForQuestion(
      sessionId: sessionId,
      questionId: questionId,
      value: value,
    );
  }
}
