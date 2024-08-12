import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
  late String currentLocale;

  static const String langKey = "lang";
  final SharedPreferences prefs;

  LocaleProvider(this.prefs) {
    readSavedLocal();
  }

  void readSavedLocal() async {
    currentLocale = prefs.getString(langKey) ?? 'en';
  }

  void SavedLocal() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(langKey, currentLocale);
  }

  void changeLocale(String newLocale) {
    currentLocale = newLocale;
    notifyListeners();
    SavedLocal();
  }

  String getCurrentLocalText() {
    return currentLocale == 'en' ? "English" : "العربية";
  }
}
