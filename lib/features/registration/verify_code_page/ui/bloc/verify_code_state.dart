part of 'verify_code_bloc.dart';

@immutable
sealed class VerifyCodeState {}

final class InitialState extends VerifyCodeState {}

final class LoadingState extends VerifyCodeState {}

final class SuccessState extends VerifyCodeState {}

final class ErrorState extends VerifyCodeState {
  ErrorState({required this.error});
  final String error;
}
