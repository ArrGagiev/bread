import 'package:bread/features/registration/verify_code_page/domain/usecase/verify_usecase.dart';
import 'package:bread/core/constants/app_texts.dart';
import 'package:bread/core/utils/network_error.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'verify_code_event.dart';
part 'verify_code_state.dart';

class VerifyCodeBloc extends Bloc<VerifyCodeEvent, VerifyCodeState> {
  //--------------------------------------------------------- loginUsecase
  final VerifyCodeUseCase verifyCodeUsecase = VerifyCodeUseCase();
  //----------------------------------------------------------------------
  VerifyCodeBloc() : super(InitialState()) {
    on<VerifyCode>(_sendingCodeEvent);
  }

  _sendingCodeEvent(VerifyCode event, Emitter<VerifyCodeState> emit) async {
    emit(LoadingState());
    try {
      await verifyCodeUsecase.verifyCode(code: event.code);
      emit(SuccessState());
    } on NetworkError catch (networkError) {
      emit(ErrorState(error: AppTexts.commonError ?? networkError.errorModel.message ?? ''));
    } catch (unknownError) {
      emit(ErrorState(error: AppTexts.commonError ?? unknownError.toString()));
    }
  }
}
