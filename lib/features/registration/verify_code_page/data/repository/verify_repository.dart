import 'package:bread/features/registration/verify_code_page/data/mapper/verify_code_mapper.dart';
import 'package:bread/features/registration/verify_code_page/domain/model/verify_code_model.dart';
import 'package:bread/features/registration/verify_code_page/data/dto/verify_code_dto.dart';
import 'package:bread/core/services/dio_network_service.dart';
import 'package:dio/dio.dart';

class VerifyRepository {
  final dioNetworkService = DioNetworkService();
  Future<VerifyCodeModel> verifyCode(String phone, String code) async {
    Response response = await dioNetworkService.post(
      endpoint: 'api/auth/code/verify',
      data: {'phone': phone, 'code': code},
    );
    VerifyCodeDto dto = VerifyCodeDto.fromJson(response.data);
    VerifyCodeModel model = dto.toDomain();
    return model;
  }
}
