import 'package:emed/views/auth/log/login_auth_view.dart';
import 'package:emed/views/auth/signup/signup_confirm_auth_view.dart';
import 'package:emed/views/auth/signup/signup_id_auth_view.dart';
import 'package:emed/views/auth/signup/signup_register_auth_view.dart';
import 'package:emed/views/auth/signup_login_auth_view.dart';
import 'package:emed/views/calendar/calendar_first_view.dart';
import 'package:emed/views/splash_view.dart';
import 'package:flutter/material.dart';

class MyRoutes {
  static final MyRoutes _instace = MyRoutes.init();
  static MyRoutes get instance => _instace;
  MyRoutes.init();

  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;

    switch (s.name) {
      case '/signup_login':
        return MaterialPageRoute(builder: (_) => const SignUpLoginAuthView());
      case '/splash':
        return MaterialPageRoute(builder: (_) => const SplashView());
      case '/signup_register':
        return MaterialPageRoute(builder: (_) => const SignUpRegisterView());
      case '/signup_confirm':
        return MaterialPageRoute(builder: (_) => const SignUpConfirmView());
      case '/signup_id':
        return MaterialPageRoute(builder: (_) => const SignUpIdView());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LogInAuthView());
     case '/calendar_first':
        return MaterialPageRoute(builder: (_) => const CalendarFirstView());
    
    }
  }
}
