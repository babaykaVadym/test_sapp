import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import '../entities/account_settings_entity.dart';

abstract class AccountSettingsRepository {
  Future<Either<ErrorModel, AccountSettingsEntity>> getAccountSettings();
}
