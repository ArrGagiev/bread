import 'package:bread/features/registration/login_page/data/repository/login_repository.dart';
import 'package:bread/features/registration/login_page/domain/model/login_status_model.dart';
import 'package:bread/core/data/local_repository/phone_local_repository.dart';

class LoginUseCase {
  //------------------------------------------------- repository
  final LoginRepository loginRepository = LoginRepository();
  final PhoneLocalRepository phoneLocalRepository = PhoneLocalRepository();
  //------------------------------------------------------------
  Future<LoginStatusModel> sendPhoneNumber({required String phone}) async {
    return await loginRepository.sendPhone(phone);
  }

  Future<void> savePhoneNumber({required String phone}) async {
    await phoneLocalRepository.setPhone(phone);
  }
}
