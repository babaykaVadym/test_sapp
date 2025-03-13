import 'package:dio/dio.dart';

import '../../../../core/network/rest_client.dart';
import '../../../../injection_container.dart';

abstract class AccountSettingsRemoteDataSource {
  Future<Response> getAccountSettings();
}

class AccountSettingsRemoteDataSourceImpl
    implements AccountSettingsRemoteDataSource {
  final DioClient dioClient = sl<DioClient>();

  AccountSettingsRemoteDataSourceImpl();

  @override
  Future<Response> getAccountSettings() async {
    return Response(requestOptions: RequestOptions());
  }
}
