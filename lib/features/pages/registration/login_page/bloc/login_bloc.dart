import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(SendingPhoneInitial()) {
    on<SendingPhoneNumber>(_sendingPhoneEvent);
  }

  Future _sendingPhoneEvent(SendingPhoneNumber event, Emitter<LoginState> emit) async {
    try {
      emit(SendingPhoneSuccess());
    } catch (error) {
      emit(SendingPhoneError(/* error.toString() */));
    }
  }
}
