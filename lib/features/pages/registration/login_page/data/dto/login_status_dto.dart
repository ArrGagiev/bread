import 'dart:convert';

LoginStatusDTO modelFromJson(String str) => LoginStatusDTO.fromJson(json.decode(str));

String modelToJson(LoginStatusDTO data) => json.encode(data.toJson());

class LoginStatusDTO {
  final String? status;
  final String? message;

  LoginStatusDTO({
    this.status,
    this.message,
  });

  factory LoginStatusDTO.fromJson(Map<String, dynamic> json) => LoginStatusDTO(
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}
