part of 'journey_general_cubit.dart';

@freezed
class JourneyGeneralState with _$JourneyGeneralState {
  const factory JourneyGeneralState.initial({
    @Default(false) bool progressOn,
    Object? error,
    @Default([]) List<CheckPointModel> checkPoints,
    @Default([]) List<JourneyActiveTaskModel> activeTaskList,
  }) = _Initial;
}
