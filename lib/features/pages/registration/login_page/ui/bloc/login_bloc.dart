import 'package:bread/features/pages/registration/login_page/domain/usecase/login_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  //--------------------------------------------------------- loginUsecase
  final LoginUseCase loginUsecase = LoginUseCase();
  //----------------------------------------------------------------------
  LoginBloc() : super(InitialState()) {
    on<SendingPhoneNumber>(_sendingPhoneEvent);
  }

  Future _sendingPhoneEvent(
      SendingPhoneNumber event, Emitter<LoginState> emit) async {
    emit(LoadingState());
    try {
      await loginUsecase.call(phone: event.number);
      emit(SuccessState());
    } catch (error) {
      emit(ErrorState());
    }
  }
}
