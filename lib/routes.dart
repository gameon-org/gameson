import 'package:flutter/widgets.dart';
import 'package:test_app/screens/cart/cart_screen.dart';
import 'package:test_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:test_app/screens/details/details_screen.dart';
import 'package:test_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:test_app/screens/home/home_screen.dart';
import 'package:test_app/screens/login_success/login_success_screen.dart';
import 'package:test_app/screens/otp/otp_screen.dart';
import 'package:test_app/screens/profile/profile_screen.dart';
import 'package:test_app/screens/sign_in/sign_in_screen.dart';
import 'package:test_app/screens/splash/splash_screen.dart';
import 'package:test_app/screens/host_match/host_match.dart';

import 'screens/sign_up/sign_up_screen.dart';
import 'screens/tournament/tournament.dart';
import 'screens/session/session.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  HostMatch.routeName: (context) => HostMatch(),
  Tournament.routeName: (context) => Tournament(),
  Session.routeName: (context) => Session(),
};
