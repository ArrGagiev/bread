import 'package:bread/core/constants/app_texts.dart';
import 'package:bread/core/utils/network_error.dart';
import 'package:bread/features/pages/registration/login_page/domain/usecase/login_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
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
    emit(LoadingState());
    var maskFormatter = MaskTextInputFormatter(
      mask: '+7 ### ### ## ##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );
    try {
      final unmaskedText = maskFormatter.unmaskText(event.number);
      await loginUsecase.call(phone: unmaskedText);
      emit(SuccessState());
    } on NetworkError catch (e) {
      emit(ErrorState(error: AppTexts.commonEror ?? e.errorModel.message ?? ''));
    } catch (error) {
      emit(ErrorState(error: AppTexts.commonEror ?? error.toString()));
    }
  }
}
