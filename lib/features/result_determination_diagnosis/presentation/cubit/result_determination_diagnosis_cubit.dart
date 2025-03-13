import 'package:flutter_app_scarb/features/result_determination_diagnosis/data/models/result_determination_diagnosis_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/app_exception.dart';
import '../../../../core/error/error_handler_util.dart';

part 'result_determination_diagnosis_cubit.freezed.dart';
part 'result_determination_diagnosis_state.dart';

class ResultDeterminationDiagnosisCubit
    extends Cubit<ResultDeterminationDiagnosisState> {
  ResultDeterminationDiagnosisCubit()
      : super(const ResultDeterminationDiagnosisState.initial());

  init() {
    emit(state.copyWith(
      resultList: [
        const ResultItemModel(result: 5, scaleMax: 10, type: "Втрата інтересу"),
        const ResultItemModel(
            result: 6, scaleMax: 10, type: "Знижений настрій"),
        const ResultItemModel(result: 10, scaleMax: 10, type: "Безсоння"),
        const ResultItemModel(result: 10, scaleMax: 10, type: "Зміна апетиту"),
        const ResultItemModel(result: 2, scaleMax: 10, type: "Почуття провини"),
      ],
    ));
  }

  updateState({
    bool? showProcessing,
    bool? showSuccess,
  }) {
    emit(state.copyWith(
      showProcessing: showProcessing ?? state.showProcessing,
      showSuccess: showSuccess ?? state.showSuccess,
    ));
  }

  chechResult() async {
    updateState(showProcessing: true);
    await Future.delayed(const Duration(seconds: 2));
    updateState(
      showSuccess: true,
      showProcessing: false,
    );
  }

  Future<void> getData() async {
    try {
      // emit(result.fold(
      //   (failure) => ResultDeterminationDiagnosisState.error(_mapFailureToMessage(failure)),
      //   (data) => ResultDeterminationDiagnosisState.loaded(data),
      // ));
      //
    } catch (e, stack) {
      setError(
          error: e,
          stackTrace: stack,
          where: '[ResultDeterminationDiagnosisCubit] getData');
    }
  }

  void updateList(int oldIndex, int newIndex) {
    final items = List<ResultItemModel>.from(state.resultList);
    if (oldIndex < newIndex) newIndex--;

    final item = items.removeAt(oldIndex);
    items.insert(newIndex, item);
    emit(state.copyWith(
      resultList: items,
    ));
  }

  setError({
    Object? error,
    StackTrace? stackTrace,
    String? where,
  }) {
    if (error != null) {
      ErrorHandler.catchError(error, stackTrace,
          appException: AppException(
              error: error,
              stackTrace: stackTrace,
              where: where ?? '[ResultDeterminationDiagnosisCubit] '));
    }
    emit(state.copyWith(
      error: error,
      progressOn: false,
    ));
  }
}
