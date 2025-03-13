import 'package:dio/dio.dart';
import 'package:flutter_app_scarb/core/network/endpoints.dart';

import '../../../../core/network/rest_client.dart';
import '../../../../injection_container.dart';

abstract class NewPasswordRemoteDataSource {
  Future<Response> setNewPassword({
    required String newPassword,
    required String hash,
    required String email,
  });
}

class NewPasswordRemoteDataSourceImpl implements NewPasswordRemoteDataSource {
  final DioClient dioClient = sl<DioClient>();

  NewPasswordRemoteDataSourceImpl();

  @override
  Future<Response> setNewPassword({
    required String newPassword,
    required String hash,
    required String email,
  }) async {
    final response = await dioClient.post(
      ApiType.public,
      "${EndPoints.auth}/change-password",
      {
        "email": email,
        "hash": hash,
        "newPassword": newPassword,
      },
    );

    return response;
  }
}
