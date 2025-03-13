abstract class ForgotPasswordLocalRepository {
  Future<void> storeEmailForRestore(String email);
}
