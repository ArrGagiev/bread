import 'package:bread/features/registration/verify_code_page/data/repository/verify_repository.dart';
import 'package:bread/features/registration/verify_code_page/domain/model/verify_code_model.dart';
import 'package:bread/core/data/local_repository/phone_local_repository.dart';

class VerifyCodeUseCase {
  //------------------------------------------------- repository
  final VerifyRepository repository = VerifyRepository();
  final PhoneLocalRepository phoneLocalRepository = PhoneLocalRepository();
  //------------------------------------------------------------

  Future<VerifyCodeModel> verifyCode({required String code}) async {
    var phone = await phoneLocalRepository.getPhone();
    return await repository.verifyCode(phone, code);
  }
}
