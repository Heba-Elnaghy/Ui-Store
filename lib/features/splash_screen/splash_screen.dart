import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/splash_screen/splash_screenBody.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreenBody(),
    );
  }
}
