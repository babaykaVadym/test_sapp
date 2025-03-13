part of 'result_determination_diagnosis_cubit.dart';

@freezed
class ResultDeterminationDiagnosisState
    with _$ResultDeterminationDiagnosisState {
  const factory ResultDeterminationDiagnosisState.initial({
    @Default(false) bool progressOn,
    @Default(false) bool showProcessing,
    @Default(false) bool showSuccess,
    Object? error,
    @Default([]) List<ResultItemModel> resultList,
    ResultItemModel? resultItemModel,
  }) = _Initial;
}
