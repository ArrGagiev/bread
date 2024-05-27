import 'package:bread/features/pages/registration/login_page/data/repository/login_repository.dart';
import 'package:bread/features/pages/registration/login_page/domain/model/login_status_model.dart';

class LoginUseCase {
  LoginUseCase({required this.repository});
  final LoginRepository repository;

  Future<LoginStatusModel> call({required String phone}) async {
    return await repository.sendPhone(phone);
  }
}
