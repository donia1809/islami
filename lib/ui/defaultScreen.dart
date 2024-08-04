import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home/providers/ThemeProvider.dart';
import 'imagePath.dart';
class DefaultScreen extends StatelessWidget {
  Widget body;

  DefaultScreen({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    bool isDark = themeProvider.isDark();
    return Stack(
      children: [
        Image.asset(
          getImagePath(
            isDark ? 'dark_bg.png' : 'default_bg.png',
          ),
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              appTranslations(context).appTitle,
              style: Theme.of(context).textTheme.titleLarge,
            ),
        )),
        body,
      ],
    );
  }
}
