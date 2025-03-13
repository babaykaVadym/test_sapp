part of 'rest_client.dart';

enum ApiType { public, protected }

abstract class ApiOptions {
  Options options = Options();
}

class PublicApiOptions extends ApiOptions {
  PublicApiOptions() {
    super.options.headers = <String, dynamic>{
      'Accept': 'application/json',
      'Content-type': 'application/json',
    };
  }
}

class ProtectedApiOptions extends ApiOptions {
  ProtectedApiOptions(String apiToken) {
    super.options.headers = <String, dynamic>{
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiToken',
    };
  }
}
