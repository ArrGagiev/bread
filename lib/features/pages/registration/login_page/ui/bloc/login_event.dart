part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

class SendingPhoneNumber extends LoginEvent {
  SendingPhoneNumber({required this.number});
  final String number;
}
