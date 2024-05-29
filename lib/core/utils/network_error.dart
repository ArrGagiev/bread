import 'dart:convert';

class NetworkError implements Exception {
  NetworkError({required this.errorModel});
  final ErrorModel errorModel;
}

//!

ErrorModel modelFromJson(String str) => ErrorModel.fromJson(json.decode(str));

class ErrorModel {
  String? message;
  String? status;
  final int? statusCode;
  final dynamic messages;

  ErrorModel({
    this.message,
    this.status,
    this.statusCode,
    this.messages,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) => ErrorModel(
        message: json["message"],
        status: json["status"],
        statusCode: json["statusCode"],
        messages: json["messages"],
      );
}
