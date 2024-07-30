import 'package:flutter/material.dart';

import '../home/homeScreen.dart';
import '../imagePath.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'SplashScreen';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Image.asset(
        getImagePath('splash.png'),
        fit: BoxFit.fill,
      ),
    );
  }
}
