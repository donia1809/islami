import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  String currentLocale = 'en';

  void changeLocale(String newLocale) {
    currentLocale = newLocale;
    notifyListeners();
  }

  String getCurrentLocalText() {
    return currentLocale == 'en' ? "English" : "العربية";
  }
}
