import 'package:dio/dio.dart';
import 'package:flutter_app_scarb/core/network/endpoints.dart';

import '../../../../core/network/rest_client.dart';
import '../../../../injection_container.dart';

abstract class SplashRemoteDataSource {
  Future<Response> refreshToken(String token);
}

class SplashRemoteDataSourceImpl implements SplashRemoteDataSource {
  final DioClient dioClient = sl<DioClient>();

  SplashRemoteDataSourceImpl();

  @override
  Future<Response> refreshToken(String token) async {
    final response = await dioClient.post(
      ApiType.public,
      "${EndPoints.auth}/refresh-token",
      {
        "refreshToken": token,
      },
    );
    return response;
  }
}
