import 'package:emed/views/auth/signup/signup_auth_view.dart';
import 'package:emed/views/auth/signup_login_auth_view.dart';
import 'package:emed/views/splash_view.dart';
import 'package:flutter/material.dart';

class MyRoutes {
  static final MyRoutes _instace = MyRoutes.init();
  static MyRoutes get instance => _instace;
  MyRoutes.init();

  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;

    switch (s.name) {
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginView());
      case '/splash':
        return MaterialPageRoute(builder: (_) => const SplashView());
      case '/signup':
        return MaterialPageRoute(builder: (_) =>  SignUp());
   
    }
  }
}
