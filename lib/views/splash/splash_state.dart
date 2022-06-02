import 'package:flutter/material.dart';

abstract class SplashState {}

class SplashInitial extends SplashState {}

class SplashLoding extends SplashState {}

class SplashComplete extends SplashState {
  nextPage(BuildContext context) =>
      Navigator.pushReplacementNamed(context, '/signup_login');
}

class SplashError extends SplashState {}
