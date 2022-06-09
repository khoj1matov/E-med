import 'package:emed/views/auth/log/login_auth_view.dart';
import 'package:emed/views/auth/signup/view/signup_confirm_auth_view.dart';
import 'package:emed/views/auth/signup/view/signup_id_auth_view.dart';
import 'package:emed/views/auth/signup/view/signup_login_auth_view.dart';
import 'package:emed/views/auth/signup/view/signup_register_auth_view.dart';
import 'package:emed/views/book/book_an_appoinment_view.dart';
import 'package:emed/views/calendar/calendar_view.dart';
import 'package:emed/views/cart/view/cart_view.dart';
import 'package:emed/views/doctors/doctors_book_an_appoinment2.view.dart';
import 'package:emed/views/doctors/doctors_view.dart';
import 'package:emed/views/doctors/doctors_profile_view.dart';
import 'package:emed/views/home/home_view.dart';
import 'package:emed/views/hospital/hospital_status_view.dart';
import 'package:emed/views/hospital/hospital_view.dart';
import 'package:emed/views/profile/profile_view.dart';
import 'package:emed/views/splash/splash_view.dart';
import 'package:emed/views/treatments/treatments_view.dart';
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
      case '/calendar':
        return MaterialPageRoute(builder: (_) => const CalendarView());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeView());
      case '/cart':
        return MaterialPageRoute(builder: (_) => const CartView());
      case '/treatments':
        return MaterialPageRoute(builder: (_) => const TreatmentsView());
      case '/doctors':
        return MaterialPageRoute(builder: (_) => const DoctorsView());
      case '/hospital':
        return MaterialPageRoute(builder: (_) => const HospitalView());
      case '/book_an_appoinment':
        return MaterialPageRoute(builder: (_) => const BookAnAppoinmentView());
      case '/doctors_profile':
        return MaterialPageRoute(builder: (_) => const DoctorsProfileView());
      case '/book_an_appoinment2':
        return MaterialPageRoute(builder: (_) => const BookAnAppoinment2View());
      case '/hospital_status':
        return MaterialPageRoute(builder: (_) => const HospitalStatusView());
      case '/profile':
        return MaterialPageRoute(builder: (_) => const ProfileView());
    }
  }
}
