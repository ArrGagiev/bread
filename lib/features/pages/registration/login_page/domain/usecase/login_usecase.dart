import 'package:bread/features/pages/registration/login_page/data/repository/login_repository.dart';
import 'package:bread/features/pages/registration/login_page/domain/model/login_status_model.dart';

class LoginUseCase {
  //------------------------------------------------- repository
  final LoginRepository repository = LoginRepository();
  //------------------------------------------------------------
  Future<LoginStatusModel> call({required String phone}) async {
    return await repository.sendPhone(phone);
  }
}
