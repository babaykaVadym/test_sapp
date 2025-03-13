import 'package:dio/dio.dart';

import '../../../../core/network/rest_client.dart';
import '../../../../injection_container.dart';

abstract class JourneyGeneralRemoteDataSource {
  Future<Response> getJourneyGeneral();
}

class JourneyGeneralRemoteDataSourceImpl
    implements JourneyGeneralRemoteDataSource {
  final DioClient dioClient = sl<DioClient>();

  JourneyGeneralRemoteDataSourceImpl();

  @override
  Future<Response> getJourneyGeneral() async {
    return Response(requestOptions: RequestOptions());
  }
}
