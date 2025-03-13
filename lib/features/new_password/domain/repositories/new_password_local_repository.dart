abstract class NewPasswordLocalRepository {
  Future<String?> getEmailForRestore();
  Future<void> clearEmailForRestore();
}
