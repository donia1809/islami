import 'package:flutter/material.dart';

import '../../main.dart';
import '../home/homeScreen.dart';
import '../imagePath.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'SplashScreen';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = MyThemeData.isDark;
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Image.asset(
        getImagePath(isDark ? 'splash_dark.png' : 'splash.png'),
        fit: BoxFit.fill,
      ),
    );
  }
}
