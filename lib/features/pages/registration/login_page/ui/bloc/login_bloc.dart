import 'package:bread/features/pages/registration/login_page/domain/usecase/login_usecase.dart';
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
  LoginBloc() : super(InitialState()) {
    on<SendingPhoneNumber>(_sendingPhoneEvent);
  }

  Future _sendingPhoneEvent(SendingPhoneNumber event, Emitter<LoginState> emit) async {
    var maskFormatter = MaskFormatter.appMaskFormatter;
    emit(LoadingState());
    try {
      final unmaskedText = maskFormatter.unmaskText(event.number);
      await loginUsecase.sendPhoneNumber(phone: unmaskedText);
      await loginUsecase.savePhoneNumber(phone: unmaskedText);
      emit(SuccessState());
    } on NetworkError catch (networkError) {
      emit(ErrorState(error: AppTexts.commonError ?? networkError.errorModel.message ?? ''));
    } catch (unknownError) {
      emit(ErrorState(error: AppTexts.commonError ?? unknownError.toString()));
    }
  }
}
