part of 'sign_in_cubit.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial({
    @Default(false) bool progressOn,
    @Default(false) bool changePage,
    Object? error,
    @Default("") String email,
    @Default("") String password,
    String? emailError,
    String? passwordError,
  }) = _Initial;
}
