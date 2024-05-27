import 'package:bread/features/pages/registration/login_page/domain/model/login_status_model.dart';
import 'package:bread/features/pages/registration/login_page/data/dto/login_status_dto.dart';

extension LoginStatusToDomain on LoginStatusDTO {
  LoginStatusModel toDomain() {
    return LoginStatusModel(
      status: status,
      message: message,
    );
  }
}
