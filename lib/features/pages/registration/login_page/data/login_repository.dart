import 'package:dio/dio.dart';

class LoginRepository {
  Future<Response> sendPhone(String phone) async {
    try {
      Dio().options.headers["Content-Type"] = "application/json";
      Dio().options.headers["Accept"] = "application/json";
      final response = await Dio().post(
        'https://nghleb.tecman.ru/api/auth/code/send',
        data: {'phone': phone},
      );
      return response;
    } catch (e) {
      return throw Exception(e.toString());
    }
  }
}
