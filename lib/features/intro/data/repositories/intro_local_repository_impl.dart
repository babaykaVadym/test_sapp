import '../../domain/repositories/intro_local_repository.dart';
import '../datasource/intro_local_datasource.dart';

class IntroLocalRepositoryImpl implements IntroLocalRepository {
  final IntroLocalDatasource introLocalDatasource;

  IntroLocalRepositoryImpl({required this.introLocalDatasource});

  @override
  Future<void> setIntroStatus(bool isShowed) async {
    await introLocalDatasource.setIntroStatus(isShowed);
  }

  @override
  Future<bool> getIntroStatus() async {
    return await introLocalDatasource.getIntroStatus();
  }

  @override
  Future<void> deleteIntroStatus() async {
    await introLocalDatasource.deleteIntroStatus();
  }
}
