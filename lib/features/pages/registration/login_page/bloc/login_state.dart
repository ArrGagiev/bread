part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

final class SendingPhoneInitial extends LoginState {}

final class SendingPhoneLoading extends LoginState {}

final class SendingPhoneSuccess extends LoginState {}

final class SendingPhoneError extends LoginState {}
