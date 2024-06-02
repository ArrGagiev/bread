part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

final class LoginInitialState extends LoginState {}

final class LoginLoadingState extends LoginState {}

final class LoginSuccessState extends LoginState {}

final class LoginErrorState extends LoginState {
  LoginErrorState({required this.error});
  final String error;
}
