import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home/homeScreen.dart';
import '../home/providers/ThemeProvider.dart';
import '../imagePath.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'SplashScreen';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    bool isDark = themeProvider.isDark();
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
