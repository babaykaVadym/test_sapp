import 'package:dio/dio.dart';
import 'package:flutter_app_scarb/core/network/endpoints.dart';

import '../../../../core/network/rest_client.dart';
import '../../../../injection_container.dart';

abstract class SignInRemoteDataSource {
  Future<Response> signIn({
    required String email,
    required String password,
  });
}

class SignInRemoteDataSourceImpl implements SignInRemoteDataSource {
  final DioClient dioClient = sl<DioClient>();

  SignInRemoteDataSourceImpl();

  @override
  Future<Response> signIn({
    required String email,
    required String password,
  }) async {
    final response = await dioClient.post(
      ApiType.public,
      "${EndPoints.auth}/login",
      {
        "email": email,
        "password": password,
      },
    );

    return response;
  }
}
