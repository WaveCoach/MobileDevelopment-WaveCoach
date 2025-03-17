import 'package:flutter/material.dart';
import 'package:wavecoach/views/splash_screen_page.dart';
import 'package:wavecoach/views/onboarding_page.dart';
import 'package:wavecoach/views/sign_in_page.dart';
import 'package:wavecoach/views/home.dart';
import 'package:wavecoach/views/forgot_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      initialRoute: '/', // Menentukan rute awal
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
