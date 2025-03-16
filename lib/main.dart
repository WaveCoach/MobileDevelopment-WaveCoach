import 'package:flutter/material.dart';
import 'package:wavecoach/views/forgot_password.dart';
import 'package:wavecoach/views/home.dart';
import 'package:wavecoach/views/onboarding_page.dart';
import 'package:wavecoach/views/sign_in_page.dart';
import 'package:wavecoach/views/splash_screen_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreenPage(),
        '/onboarding': (context) => OnboardingPage(),
        '/sign-in': (context) => SignInPage(),
        '/home': (context) => HomeScreenView(),
        '/forgot-password': (context) => ForgotPasswordView(),
      },
    );
  }
}
