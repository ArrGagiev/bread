import 'dart:convert';

VerifyCodeDto verifyCodeDtoFromJson(String str) => VerifyCodeDto.fromJson(json.decode(str));

String verifyCodeDtoToJson(VerifyCodeDto data) => json.encode(data.toJson());

class VerifyCodeDto {
  String? status;
  String? message;
  String? accessToken;
  String? refereshToken;
  String? tokenType;
  String? accessTokenExpiresIn;
  String? refereshTokenExpiresIn;

  VerifyCodeDto({
    this.status,
    this.message,
    this.accessToken,
    this.refereshToken,
    this.tokenType,
    this.accessTokenExpiresIn,
    this.refereshTokenExpiresIn,
  });

  factory VerifyCodeDto.fromJson(Map<String, dynamic> json) => VerifyCodeDto(
        status: json["status"],
        message: json["message"],
        accessToken: json["access_token"],
        refereshToken: json["referesh_token"],
        tokenType: json["token_type"],
        accessTokenExpiresIn: json["access_token_expires_in"],
        refereshTokenExpiresIn: json["referesh_token_expires_in"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "access_token": accessToken,
        "referesh_token": refereshToken,
        "token_type": tokenType,
        "access_token_expires_in": accessTokenExpiresIn,
        "referesh_token_expires_in": refereshTokenExpiresIn,
      };
}
