import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/data/datasources/questionnaire_without_diagnosis_remote_data_source.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/data/repositories/questionnaire_without_diagnosis_repository_impl.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/domain/repositories/questionnaire_without_diagnosis_repository.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/domain/usecases/init_questionnaire_usecase.dart';

import '../../injection_container.dart';

mixin QuestionnaireWithoutDiagnosisInjector on Injector {
  @override
  Future<void> init() async {
    await super.init();

    // Questionnaire repository
    sl.registerLazySingleton<QuestionnaireWithoutDiagnosisRepository>(
      () => QuestionnaireWithoutDiagnosisRepositoryImpl(
          questionnaireRemoteDataSource:
              sl<QuestionnaireWithoutDiagnosisRemoteDataSource>()),
    );

    //Questionnaire dataSources
    sl.registerLazySingleton<QuestionnaireWithoutDiagnosisRemoteDataSource>(
      () => QuestionnaireWithoutDiagnosisRemoteDataSourceImpl(),
    );

    //Questionnaire useCase
    sl.registerLazySingleton(() => InitQuestionnaireUsecase(
        sl<QuestionnaireWithoutDiagnosisRepository>()));
  }
}
