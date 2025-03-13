import 'package:flutter_app_scarb/features/questionnaire/data/datasources/questionnaire_remote_data_source.dart';
import 'package:flutter_app_scarb/features/questionnaire/data/repositories/questionnaire_repository_impl.dart';
import 'package:flutter_app_scarb/features/questionnaire/domain/repositories/questionnaire_repository.dart';
import 'package:flutter_app_scarb/features/questionnaire/domain/usecases/answer_for_question_usecase.dart';
import 'package:flutter_app_scarb/features/questionnaire/domain/usecases/complete_questionnaire_usecase.dart';
import 'package:flutter_app_scarb/features/questionnaire/domain/usecases/create_questionnaire_usecase.dart';
import 'package:flutter_app_scarb/features/questionnaire/domain/usecases/update_answer_questionnaire_usecase.dart';

import '../../injection_container.dart';

mixin QuestionnaireInjector on Injector {
  @override
  Future<void> init() async {
    await super.init();

    // Questionnaire repository
    sl.registerLazySingleton<QuestionnaireRepository>(
      () => QuestionnaireRepositoryImpl(questionnaireRemoteDataSource: sl()),
    );

    //Questionnaire dataSources
    sl.registerLazySingleton<QuestionnaireRemoteDataSource>(
      () => QuestionnaireRemoteDataSourceImpl(),
    );

    //Questionnaire useCase
    sl.registerLazySingleton(
        () => CreateQuestionnaireUsecase(sl<QuestionnaireRepository>()));
    sl.registerLazySingleton(
        () => CompleteQuestionnaireUsecase(sl<QuestionnaireRepository>()));
    sl.registerLazySingleton(
        () => AnswerForQuestionUsecase(sl<QuestionnaireRepository>()));
    sl.registerLazySingleton(
        () => UpdateAnswerQuestionnaireUsecase(sl<QuestionnaireRepository>()));
  }
}
