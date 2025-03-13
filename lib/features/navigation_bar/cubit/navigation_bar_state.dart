part of 'navigation_bar_cubit.dart';

@freezed
class NavigationBarState with _$NavigationBarState {
  const factory NavigationBarState.initial({
    @Default(false) bool progressOn,
    Object? error,
    @Default(0) int indexOfTapped,
    required List<Widget> listOfWidget,
  }) = _Initial;
}
