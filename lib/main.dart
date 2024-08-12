import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/ui/HadithDetails/Hadith_Details.dart';
import 'package:islami/ui/chapterDetails/chapter_details.dart';
import 'package:islami/ui/home/homeScreen.dart';
import 'package:islami/ui/home/providers/ThemeProvider.dart';
import 'package:islami/ui/home/providers/localeProvider.dart';
import 'package:islami/ui/splash/splashScreen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var sharedPreference = await SharedPreferences.getInstance();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ThemeProvider(sharedPreference)),
    ChangeNotifierProvider(create: (_) => LocaleProvider(sharedPreference)),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final Color lightTheme = const Color(0XFFB7935F);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    LocaleProvider localeProvider = Provider.of<LocaleProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: themeProvider.currentTheme,

      ////////////////Routes///////////////
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        ChapterDetails.routeName: (context) => ChapterDetails(),
        HadithDetailsScreen.routeName: (context) => HadithDetailsScreen(),
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(localeProvider.currentLocale),
    );
  }
}
///////////////////////////////////////////////////////////////////

class MyThemeData {
  static const Color lightPrimary = Color(0XFFB7935F);
  static const Color darkPrimary = Color(0XFF141A2E);
  static const Color darkSecondary = Color(0XFFFACC1D);
  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      ////////app bar theme
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      ////////colorScheme
      colorScheme: ColorScheme.fromSeed(
        seedColor: lightPrimary,
        primary: lightPrimary,
        onPrimary: Colors.white,
        secondary: lightPrimary,
      ),
      ////////bottom bar theme
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ),
      ////////text theme
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          color: Colors.black,
        ),
        titleMedium: TextStyle(
          fontSize: 25,
          color: Colors.black,
        ),
        bodyMedium: TextStyle(
          fontSize: 25,
          color: Colors.black,
        ),
        bodySmall: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
      ////////radio icon theme
      iconTheme: IconThemeData(color: lightPrimary),
      ////////card theme
      cardTheme: CardTheme(color: Colors.white));
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    ////////app bar theme
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
    ),
    ////////colorScheme
    colorScheme: ColorScheme.fromSeed(
      seedColor: darkPrimary,
      primary: darkPrimary,
      onPrimary: Colors.white,
    ),
    ////////bottom bar theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: darkSecondary,
      unselectedItemColor: Colors.white,
    ),
    ////////text theme
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        fontSize: 25,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    ),
    ////////radia icon theme
    iconTheme: IconThemeData(color: darkSecondary),
    ////////card theme
    cardTheme: CardTheme(color: darkPrimary, surfaceTintColor: darkPrimary),
  );
}
