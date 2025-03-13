import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_app_scarb/config/app_config.dart';
import 'package:flutter_app_scarb/core/network/api_config.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:flutter_app_scarb/core/utils/failures.dart';

part 'api_options.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();

  DioClient._internal();

  factory DioClient() {
    _instance.baseUrl = AppConfig.apiUrl;

    _instance.connectionTimeout = AppConfig.apiConnectTimeout;
    _instance.receiveTimeout = AppConfig.apiReceiveTimeout;

    BaseOptions options = BaseOptions(
      baseUrl: AppConfig.apiUrl,
      connectTimeout: Duration(milliseconds: AppConfig.apiConnectTimeout),
      receiveTimeout: Duration(milliseconds: AppConfig.apiReceiveTimeout),
    );

    _instance._dio = Dio(options);
    return _instance;
  }

  late Dio _dio;
  late int connectionTimeout;
  late int receiveTimeout;
  late String baseUrl;

  Future<Response<dynamic>> get(
    ApiType apiType,
    String path, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
  }) async {
    _setDioInterceptorList();

    final standardHeaders = await _getOptions(apiType);

    return _dio
        .get(path, queryParameters: query, options: standardHeaders)
        .then((value) => value)
        .catchError(_handleException);
  }

  Future<Response<dynamic>> post(
    ApiType apiType,
    String path,
    Map<String, dynamic> data, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? query,
  }) async {
    _setDioInterceptorList();

    final standardHeaders = await _getOptions(apiType);
    if (headers != null) {
      standardHeaders.headers?.addAll(headers);
    }

    return _dio
        .post(
          path,
          data: data,
          options: standardHeaders,
          queryParameters: query,
        )
        .then((value) => value)
        .catchError(_handleException);
  }

  Future<Response<dynamic>> postFormData(
    ApiType apiType,
    String path,
    Map<String, dynamic> data, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? query,
  }) async {
    _setDioInterceptorList();

    final standardHeaders = await _getOptions(apiType);
    standardHeaders.headers?.addAll({
      'Content-Type': 'multipart/form-data',
    });

    return _dio
        .post(
          path,
          data: FormData.fromMap(data),
          options: standardHeaders,
          queryParameters: query,
        )
        .then((value) => value)
        .catchError(_handleException);
  }

  Future<Response<dynamic>> patch(
    ApiType api,
    String path,
    Map<String, dynamic> data, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? query,
  }) async {
    _setDioInterceptorList();

    final standardHeaders = await _getOptions(api);
    if (headers != null) {
      standardHeaders.headers?.addAll(headers);
    }

    return _dio
        .patch(
          path,
          data: data,
          options: standardHeaders,
          queryParameters: query,
        )
        .then((value) => value)
        .catchError(_handleException);
  }

  Future<Response<dynamic>> put(
    ApiType apiType,
    String path,
    Map<String, dynamic> data, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? query,
  }) async {
    _setDioInterceptorList();

    final standardHeaders = await _getOptions(apiType);
    if (headers != null) {
      standardHeaders.headers?.addAll(headers);
    }

    return _dio
        .put(
          path,
          data: data,
          options: standardHeaders,
        )
        .then((value) => value)
        .catchError(_handleException);
  }

  Future<Response<dynamic>> delete(
    ApiType apiType,
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? query,
  }) async {
    _setDioInterceptorList();

    final standardHeaders = await _getOptions(apiType);
    if (headers != null) {
      standardHeaders.headers?.addAll(headers);
    }

    return _dio
        .delete(
          path,
          data: data,
          queryParameters: query,
          options: standardHeaders,
        )
        .then((value) => value)
        .catchError(_handleException);
  }

  Future<Response<dynamic>> putFormData(
    ApiType apiType,
    String path,
    Map<String, dynamic> data, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? query,
  }) async {
    _setDioInterceptorList();

    final standardHeaders = await _getOptions(apiType);
    if (headers != null) {
      standardHeaders.headers?.addAll({
        'Content-Type': 'multipart/form-data',
      });
    }
    data.addAll({
      '_method': 'PUT',
    });

    return _dio
        .post(
          path,
          data: FormData.fromMap(data),
          queryParameters: query,
          options: standardHeaders,
        )
        .then((value) => value)
        .catchError(_handleException);
  }

  dynamic _handleException(error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          throw RequestTimeout(LocaleKeys.error_connectionTimeout.tr());
        case DioExceptionType.receiveTimeout:
          throw RequestTimeout(LocaleKeys.error_receiveTimeout.tr());
        case DioExceptionType.sendTimeout:
          throw RequestTimeout(LocaleKeys.error_sendTimeout.tr());
        case DioExceptionType.cancel:
          throw Unexpected(LocaleKeys.error_cancel.tr());
        case DioExceptionType.badResponse:
          return _handleHttpError(error);
        case DioExceptionType.unknown:
          throw Unexpected(
              LocaleKeys.error_unknown.tr(args: ["${error.message}"]));
        default:
          throw Unexpected(LocaleKeys.error_somethingWentWrong.tr());
      }
    } else {
      throw Unexpected(LocaleKeys.error_unknown.tr(args: [error.toString()]));
    }
  }

  dynamic _handleHttpError(error) {
    dynamic errorData = error.response!.data;

    throw Failure.fromStatusCode(error.response?.statusCode, errorData);
  }

  void _setDioInterceptorList() {
    List<Interceptor> interceptorList = [];
    _dio.interceptors.clear();

    if (kDebugMode) {}
    _dio.interceptors.addAll(interceptorList);
  }

  Future<Options> _getOptions(ApiType api) async {
    switch (api) {
      case ApiType.protected:
        return ProtectedApiOptions(ApiConfig.token).options;

      default:
        return PublicApiOptions().options;
    }
  }
}
