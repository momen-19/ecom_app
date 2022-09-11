import 'package:flutter/widgets.dart';
import 'package:posts_app/features/auth/screens/login_screen.dart';
import 'package:posts_app/features/auth/screens/register_screen.dart';
import 'package:posts_app/screens/out_boarding_screen.dart';
import 'package:posts_app/screens/splash.dart';

const initialRoute = '/splash_screen';

Map<String, Widget Function(BuildContext)> routes =  {
  '/splash_screen' : (context) => const SplashScreen(),
  '/out_boarding_screen' : (context) => const OutBoardingScreen(),
  '/register_screen' : (context) => const RegisterScreen(),
  '/login_screen' : (context) =>  const LoginScreen(),
};
