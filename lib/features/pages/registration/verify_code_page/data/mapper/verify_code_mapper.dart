import 'package:bread/features/pages/registration/verify_code_page/data/dto/verify_code_dto.dart';
import 'package:bread/features/pages/registration/verify_code_page/domain/model/verify_code_model.dart';

extension VerifyCodeToDomain on VerifyCodeDto {
  VerifyCodeModel toDomain() {
    return VerifyCodeModel(
      status: status,
      message: message,
      accessToken: accessToken,
      refereshToken: refereshToken,
      tokenType: tokenType,
      accessTokenExpiresIn: accessTokenExpiresIn,
      refereshTokenExpiresIn: refereshTokenExpiresIn,
    );
  }
}
