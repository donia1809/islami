import 'package:flutter/material.dart';
import 'package:islami/main.dart';

import 'imagePath.dart';

class DefaultScreen extends StatelessWidget {
  Widget body;

  DefaultScreen({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    bool isDark = MyThemeData.isDark;
    return Stack(
      children: [
        Image.asset(getImagePath(isDark ? 'dark_bg.png' : 'default_bg.png')),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
        body,
      ],
    );
  }
}
