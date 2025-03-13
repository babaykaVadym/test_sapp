import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';

abstract class JourneyGeneralRepository {
  Future<Either<ErrorModel, String>> getJourneyGeneral();
}
