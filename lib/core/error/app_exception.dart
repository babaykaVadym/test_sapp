class AppException implements Exception {
  final Map<String, dynamic>? request;
  final Map<String, dynamic>? response;
  final Object? error;
  final StackTrace? stackTrace;
  final String? message;
  final String where;
  final String? url;

  AppException({
    this.request,
    this.response,
    this.error,
    this.stackTrace,
    this.message,
    required this.where,
    this.url,
  });

  @override
  String toString() {
    return 'AppRemoteException | $where : $url';
  }

  Map<String, dynamic> toJson() => {
        'request': request,
        'response': response,
        'error': error?.toString(),
        'message': message,
        'where': where,
        'url': url,
      };

  AppException copyWith({
    Map<String, dynamic>? request,
    Map<String, dynamic>? response,
    Object? error,
    StackTrace? stackTrace,
    String? message,
    String? where,
    String? url,
  }) =>
      AppException(
        request: request ?? this.request,
        response: response ?? this.response,
        error: error ?? this.error,
        stackTrace: stackTrace ?? this.stackTrace,
        message: message ?? this.message,
        where: where ?? this.where,
        url: url ?? this.url,
      );
}
