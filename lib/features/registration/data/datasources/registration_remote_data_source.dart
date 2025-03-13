import 'package:dio/dio.dart';
import 'package:flutter_app_scarb/core/network/endpoints.dart';

import '../../../../core/network/rest_client.dart';
import '../../../../injection_container.dart';

abstract class RegistrationRemoteDataSource {
  Future<Response> registrationUser({
    required String email,
    required String password,
    required String inviteCode,
  });

  Future<Response> signIn({
    required String email,
    required String password,
  });
}

class RegistrationRemoteDataSourceImpl implements RegistrationRemoteDataSource {
  final DioClient dioClient = sl<DioClient>();

  RegistrationRemoteDataSourceImpl();

  @override
  Future<Response> registrationUser({
    required String email,
    required String password,
    required String inviteCode,
  }) async {
    final response = await dioClient.post(
      ApiType.public,
      "${EndPoints.auth}/link-invite",
      {
        "inviteHash": inviteCode,
        "email": email,
        "password": password,
      },
    );
    return response;
  }

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
