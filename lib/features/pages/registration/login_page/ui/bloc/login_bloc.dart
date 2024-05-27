import 'package:bread/features/pages/registration/login_page/data/repository/login_repository.dart';
import 'package:bread/features/pages/registration/login_page/domain/model/login_status_model.dart';
import 'package:bread/features/pages/registration/login_page/domain/usecase/login_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'dart:developer';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(SendingPhoneInitial()) {
    on<SendingPhoneNumber>(_sendingPhoneEvent);
  }

  Future _sendingPhoneEvent(SendingPhoneNumber event, Emitter<LoginState> emit) async {
    log('sending phone event: ${event.number}');
    // -------------------------------------------------------------------
    LoginRepository repository = LoginRepository();
    LoginUseCase loginUsecase = LoginUseCase(repository: repository);
    // -------------------------------------------------------------------
    try {
      LoginStatusModel model = await loginUsecase.call(phone: event.number);
      log('bloc =====> ${model.message}');
      // emit
    } catch (error) {
      // emit
    }
  }
}
