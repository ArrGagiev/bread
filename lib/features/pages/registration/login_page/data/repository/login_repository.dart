import 'package:bread/features/pages/registration/login_page/data/mapper/login_status_mapper.dart';
import 'package:bread/features/pages/registration/login_page/domain/model/login_status_model.dart';
import 'package:bread/features/pages/registration/login_page/data/dto/login_status_dto.dart';
import 'package:dio/dio.dart';
import 'dart:developer';

class LoginRepository {
  Future<LoginStatusModel> sendPhone(String phone) async {
    try {
      Dio().options.headers["Content-Type"] = "application/json";
      Dio().options.headers["Accept"] = "application/json";
      final response = await Dio().post(
        'https://nghleb.tecman.ru/api/auth/code/send',
        data: {'phone': phone},
      );

      // Обработка статуса ответа
      // todo: if (response.statusCode == 200) нужен в любом случае
      if (response.statusCode == 200) {
        LoginStatusDTO dto = LoginStatusDTO.fromJson(response.data);
        LoginStatusModel model = dto.toDomain();
        log('=====> ${model.message}');
        return model;
      } else if (response.statusCode == 422) {
        // Некорректный формат телефона
        return LoginStatusModel(
          status: 'ERROR',
          message: 'The phone field format is invalid',
        );
      } else if (response.statusCode == 500) {
        // Не удалось отправить код
        return LoginStatusModel(
          status: 'ERROR',
          message: 'The SMS code is not registered',
        );
      } else if (response.statusCode == 520) {
        // Код не был отправлен
        return LoginStatusModel(
          status: 'ERROR',
          message: 'The SMS code has not been sent',
        );
      } else {
        return throw Exception('Unexpected server response');
      }
    } catch (e) {
      return throw Exception(e.toString());
    }
  }
}
