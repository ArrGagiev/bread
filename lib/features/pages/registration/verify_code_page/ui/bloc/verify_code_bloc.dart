import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'verify_code_event.dart';
part 'verify_code_state.dart';

class VerifyCodeBloc extends Bloc<VerifyCodeEvent, VerifyCodeState> {
  VerifyCodeBloc() : super(VerifyCodeInitial()) {
    on<VerifyCodeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
