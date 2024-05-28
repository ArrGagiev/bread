import 'dart:convert';

LoginStatusModel modelFromJson(String str) => LoginStatusModel.fromJson(json.decode(str));

String modelToJson(LoginStatusModel data) => json.encode(data.toJson());

class LoginStatusModel {
  final String? status;
  final String? message;

  LoginStatusModel({
    this.status,
    this.message,
  });

  factory LoginStatusModel.fromJson(Map<String, dynamic> json) => LoginStatusModel(
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}
