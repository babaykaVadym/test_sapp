import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import '../entities/ideas_settings_entity.dart';

abstract class IdeasSettingsRepository {
  Future<Either<ErrorModel, IdeasSettingsEntity>> getIdeasSettings();
}
