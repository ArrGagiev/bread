part of 'verify_code_bloc.dart';

@immutable
sealed class VerifyCodeEvent {}

class VerifyCode extends VerifyCodeEvent {
  VerifyCode({required this.code});
  final String code;
}
