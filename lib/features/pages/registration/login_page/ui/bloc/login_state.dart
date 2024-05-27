part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

final class SendingPhoneInitial extends LoginState {}
