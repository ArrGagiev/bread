import 'package:bread/features/registration/verify_code_page/domain/model/verify_code_model.dart';
import 'package:bread/features/registration/verify_code_page/data/dto/verify_code_dto.dart';

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
