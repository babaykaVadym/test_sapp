part of 'emotion_state_cubit.dart';

@freezed
class EmotionStateState with _$EmotionStateState {
  const factory EmotionStateState.initial({
    @Default(false) bool progressOn,
    Object? error,
    @Default("") String currentEmotion,
    @Default([]) List<String> emotions,
    @Default(0) int currentEmotionIndex,
    @Default(3) int maxEmotionIndex,
    @Default(0) int minEmotionIndex,
  }) = _Initial;
}
