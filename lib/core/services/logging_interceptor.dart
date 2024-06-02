import 'package:dio/dio.dart';
import 'dart:developer';
import 'dart:convert';

// Класс для логирования.
class LoggingInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    log("""ERROR:
           URL: ${err.requestOptions.uri}\n
           Method: ${err.requestOptions.method}
           Headers: ${json.encode(err.response?.headers.map)}
           StatusCode: ${err.response?.statusCode}
           Data: ${json.encode(err.response?.data)}
           Error:${err.error}
           Message:${err.message}
           <— END HTTP
           """);
    return super.onError(err, handler);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log("""REQUEST:
           ${cURLRepresentation(options)}
           """);
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log("""RESPONSE:
           URL: ${response.requestOptions.uri}
           Method: ${response.requestOptions.method}
           Headers: ${json.encode(response.requestOptions.headers)}
           Data: ${json.encode(response.data)}
           """);
    return super.onResponse(response, handler);
  }

  String cURLRepresentation(RequestOptions options) {
    List<String> components = ["\$ curl -i"];
    if (options.method.toUpperCase() == "GET") {
      components.add("-X ${options.method}");
    }

    options.headers.forEach((k, v) {
      if (k != "Cookie") {
        components.add("-H \"$k: $v\"");
      }
    });

    var data = options.data;
    components.add("-d \"$data\"");

    components.add("\"${options.uri.toString()}\"");

    return components.join('\\\n\t');
  }
}
