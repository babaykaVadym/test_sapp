import 'package:dio/dio.dart';

import '../../../../core/network/rest_client.dart';
import '../../../../injection_container.dart';

abstract class NotificationsSettingsRemoteDataSource {
  Future<Response> getNotificationsSettings();
}

class NotificationsSettingsRemoteDataSourceImpl
    implements NotificationsSettingsRemoteDataSource {
  final DioClient dioClient = sl<DioClient>();

  NotificationsSettingsRemoteDataSourceImpl();

  @override
  Future<Response> getNotificationsSettings() async {
    return Response(requestOptions: RequestOptions());
  }
}
