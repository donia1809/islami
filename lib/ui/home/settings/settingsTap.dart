import 'package:flutter/material.dart';
import 'package:islami/ui/home/settings/themeSelection.dart';

import 'languageSelection.dart';

class SettingsTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 200.0, left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ThemeSelection(),
          const SizedBox(
            height: 25,
          ),
          LanguageSelection(),
        ],
      ),
    );
  }
}
