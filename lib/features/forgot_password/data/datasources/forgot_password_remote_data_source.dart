import 'package:dio/dio.dart';
import 'package:flutter_app_scarb/core/network/endpoints.dart';

import '../../../../core/network/rest_client.dart';
import '../../../../injection_container.dart';

abstract class ForgotPasswordRemoteDataSource {
  Future<Response> restorePassword(String email, String platform);
}

class ForgotPasswordRemoteDataSourceImpl
    implements ForgotPasswordRemoteDataSource {
  final DioClient dioClient = sl<DioClient>();

  ForgotPasswordRemoteDataSourceImpl();

  @override
  Future<Response> restorePassword(String email, String platform) async {
    final response = await dioClient.post(
      ApiType.public,
      "${EndPoints.auth}/forgot-password",
      {
        "email": email,
        "platform": platform,
      },
    );

    return response;
  }
}
