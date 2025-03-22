import 'dart:developer';

import 'package:dio/dio.dart';

class DioInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    log("The Request is [${options.method}] => PATH: ${options.path}");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log("The Response's Status Code is : [$response]");
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log(
      "We Have an Error :: [${err.response?.statusCode}] => PATH: ${err.requestOptions.path}",
    );

    super.onError(err, handler);
  }
}
