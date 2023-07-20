import 'package:dio/dio.dart';
import 'package:shared/shared.dart';

class DioBuilder {
  const DioBuilder._();

  static Dio createDio({
    BaseOptions? options,
  }) {
    final connectTimeout = options?.connectTimeout ??
        Duration(milliseconds: ServerTimeoutConstants.connectTimeoutInMs);
    final receiveTimeout = options?.receiveTimeout ??
        Duration(milliseconds: ServerTimeoutConstants.receiveTimeoutInMs);
    final sendTimeout = options?.sendTimeout ??
        Duration(milliseconds: ServerTimeoutConstants.sendTimeoutInMs);
    final baseUrl = options?.baseUrl ?? UrlConstants.appApiBaseUrl;

    return Dio(
      BaseOptions(
        connectTimeout: connectTimeout,
        receiveTimeout: receiveTimeout,
        sendTimeout: sendTimeout,
        baseUrl: baseUrl,
      ),
    );
  }
}
