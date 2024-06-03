import 'dart:developer';

import 'package:bread/core/data/local_repository/token_local_repository.dart';
import 'package:bread/features/registration/verify_code_page/data/repository/verify_repository.dart';
import 'package:bread/features/registration/verify_code_page/domain/model/verify_code_model.dart';
import 'package:bread/core/data/local_repository/phone_local_repository.dart';

class VerifyCodeUseCase {
  //------------------------------------------------- repository
  final VerifyRepository repository = VerifyRepository();
  final PhoneLocalRepository phoneLocalRepository = PhoneLocalRepository();
  final TokenLocalRepository tokenLocalRepository = TokenLocalRepository();
  //------------------------------------------------------------

  Future<VerifyCodeModel> verifyCode({required String code}) async {
    // достал телефон из локального хранилища и перердал его сразу в пост запрос
    var phone = await phoneLocalRepository.getPhone();
    var veryifyCodeModel = await repository.verifyCode(phone, code);
    //todo: токен для запросов
    await saveAccessToken(accessToken: veryifyCodeModel.accessToken!);
    //todo: токен для обновновления токена )
    saveRefreshToken(refreshToken: veryifyCodeModel.refereshToken!);

    return veryifyCodeModel;
  }

  Future<void> saveAccessToken({required String accessToken}) async {
    await tokenLocalRepository.setAccessToken(accessToken);
    var savedAccessToken = await tokenLocalRepository.getAccessToken();
    log(savedAccessToken);
  }

  Future<void> saveRefreshToken({required String refreshToken}) async {
    await tokenLocalRepository.setRefreshToken(refreshToken);
    var savedRefreshToken = await tokenLocalRepository.getRefreshToken();
    log(savedRefreshToken);
  }
}
