import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<bool> {
  SignUpCubit() : super(false);

  void visible() {
    return emit(!state);
  }
}
