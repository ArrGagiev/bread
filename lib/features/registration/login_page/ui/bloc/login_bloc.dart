import 'package:bread/features/registration/login_page/domain/usecase/login_usecase.dart';
import 'package:bread/core/utils/mask_formatter.dart';
import 'package:bread/core/constants/app_texts.dart';
import 'package:bread/core/utils/network_error.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  //--------------------------------------------------------- loginUsecase
  final LoginUseCase loginUsecase = LoginUseCase();
  //----------------------------------------------------------------------
  LoginBloc() : super(LoginInitialState()) {
    on<SendingPhoneNumber>(_sendingPhoneEvent);
  }

  Future _sendingPhoneEvent(SendingPhoneNumber event, Emitter<LoginState> emit) async {
    var maskFormatter = MaskFormatter.appMaskFormatter;
    emit(LoginLoadingState());
    try {
      final unmaskedText = maskFormatter.unmaskText(event.number);
      await loginUsecase.sendPhoneNumber(phone: unmaskedText);
      await loginUsecase.savePhoneNumber(phone: unmaskedText);
      emit(LoginSuccessState());
    } on NetworkError catch (networkError) {
      emit(LoginErrorState(error: AppTexts.commonError ?? networkError.errorModel.message ?? ''));
    } catch (unknownError) {
      emit(LoginErrorState(error: AppTexts.commonError ?? unknownError.toString()));
    }
  }
}
