import 'package:bread/features/registration/login_page/data/mapper/login_status_mapper.dart';
import 'package:bread/features/registration/login_page/domain/model/login_status_model.dart';
import 'package:bread/features/registration/login_page/data/dto/login_status_dto.dart';
import 'package:bread/core/services/dio_network_service.dart';
import 'package:dio/dio.dart';

class LoginRepository {
  final dioNetworkService = DioNetworkService();
  Future<LoginStatusModel> sendPhone(String phone) async {
    Response response = await dioNetworkService.post(
      endpoint: 'api/auth/code/send',
      data: {'phone': phone},
    );
    LoginStatusDTO dto = LoginStatusDTO.fromJson(response.data);
    LoginStatusModel model = dto.toDomain();
    return model;
  }
}
