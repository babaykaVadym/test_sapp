import 'package:dio/dio.dart';

import '../../../../core/network/rest_client.dart';
import '../../../../injection_container.dart';

abstract class IdeasSettingsRemoteDataSource {
  Future<Response> getIdeasSettings();
}

class IdeasSettingsRemoteDataSourceImpl
    implements IdeasSettingsRemoteDataSource {
  final DioClient dioClient = sl<DioClient>();

  IdeasSettingsRemoteDataSourceImpl();

  @override
  Future<Response> getIdeasSettings() async {
    return Response(requestOptions: RequestOptions());
  }
}
