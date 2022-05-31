abstract class SignUpState {
  SignUpState();
}

class SignUpInitial extends SignUpState {
  SignUpInitial();
}

class SignUpLoading extends SignUpState {
  SignUpLoading();
}

class SignUpComplete extends SignUpState {
  bool secPass;
  SignUpComplete({required this.secPass});
}

class SignUpError extends SignUpState {
  SignUpError();
}
