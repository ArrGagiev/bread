import 'package:bread/core/constants/app_texts.dart';
import 'package:bread/core/services/interceptor.dart';
import 'package:bread/core/utils/network_error.dart';
import 'package:dio/dio.dart';

class DioNetworkService {
  Dio dio = Dio();
  static String baseUrl = 'https://nghleb.tecman.ru/';
  DioNetworkService() {
    dio.options.baseUrl = baseUrl;

    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.headers['Accept'] = 'application/json';

    dio.interceptors.add(LoggingInterceptor());
  }

  Future<Response> get({
    required String endpoint,
  }) async {
    Response response;
    try {
      response = await dio.get(endpoint);
    } on DioException catch (e) {
      ErrorModel errorModel = ErrorModel(
          statusCode: e.response?.statusCode,
          message: e.response?.data['message'],
          status: e.response?.data['status'],
          messages: e.response?.data['messages']);
      if ((errorModel.message ?? '').isEmpty) {
        errorModel.message = AppTexts.commonError ?? e.message.toString();
        errorModel.status = e.type.toString();
      }
      throw NetworkError(errorModel: errorModel);
    }
    return response;
  }

  Future<Response> post({
    required String endpoint,
    dynamic data = const {},
  }) async {
    Response response;
    try {
      response = await dio.post(endpoint, data: data);
    } on DioException catch (e) {
      ErrorModel errorModel = ErrorModel(
          statusCode: e.response?.statusCode,
          message: e.response?.data['message'],
          status: e.response?.data['status'],
          messages: e.response?.data['messages']);
      if ((errorModel.message ?? '').isEmpty) {
        errorModel.message = AppTexts.commonError ?? e.message.toString();
        errorModel.status = e.type.toString();
      }
      throw NetworkError(errorModel: errorModel);
    }
    return response;
  }
}
