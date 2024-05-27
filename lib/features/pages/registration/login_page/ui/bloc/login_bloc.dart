import 'package:bread/features/pages/registration/login_page/domain/model/login_status_model.dart';
import 'package:bread/features/pages/registration/login_page/domain/usecase/login_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'dart:developer';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  //--------------------------------------------------------- loginUsecase
  final LoginUseCase loginUsecase = LoginUseCase();
  //----------------------------------------------------------------------
  LoginBloc() : super(SendingPhoneInitial()) {
    on<SendingPhoneNumber>(_sendingPhoneEvent);
  }

  Future _sendingPhoneEvent(
    SendingPhoneNumber event,
    Emitter<LoginState> emit,
  ) async {
    log('sending phone event: ${event.number}');
    emit(SendingPhoneLoading());
    try {
      LoginStatusModel model = await loginUsecase.call(phone: event.number);
      log('bloc =====> ${model.message}');
      emit(SendingPhoneSuccess());
    } catch (error) {
      emit(SendingPhoneError(/* error.toString() */));
    }
  }
}
