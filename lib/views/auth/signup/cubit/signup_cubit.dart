import 'package:emed/views/auth/signup/state/signup_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  bool isTrue = true;
  visible() {
    emit(SignUpComplete(secPass: isTrue = !isTrue));
  }
}
