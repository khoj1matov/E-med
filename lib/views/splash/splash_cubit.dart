
import 'package:emed/views/splash/splash_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit(BuildContext context) : super(SplashInitial()) {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => SplashComplete().nextPage(context),
    );
  }
}