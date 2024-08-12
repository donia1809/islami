import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeMode currentTheme;
  static const String isDarkTheme = "theme";
  final SharedPreferences prefs;

  ThemeProvider(this.prefs) {
    readSavedTheme();
  }

  void readSavedTheme() async {
    var isDark = prefs.getBool(isDarkTheme) ?? false;
    currentTheme = isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void SavedTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(isDarkTheme, isDark());
  }

  void changeTheme(ThemeMode newTheme) {
    currentTheme = newTheme;
    notifyListeners();
    SavedTheme();
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  String getCurrentThemeText() {
    return currentTheme == 'light' ? "Light" : "Dark";
  }
}
