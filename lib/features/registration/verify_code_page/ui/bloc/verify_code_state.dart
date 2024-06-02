part of 'verify_code_bloc.dart';

@immutable
sealed class VerifyCodeState {}

final class VerifyCodeInitialState extends VerifyCodeState {}

final class VerifyCodeLoadingState extends VerifyCodeState {}

final class VerifyCodeSuccessState extends VerifyCodeState {}

final class VerifyCodeErrorState extends VerifyCodeState {
  VerifyCodeErrorState({required this.error});
  final String error;
}
