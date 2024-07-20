import 'package:flutter/material.dart';
import 'package:islami/ui/chapterDetails/chapter_details.dart';
import 'package:islami/ui/home/homeScreen.dart';
import 'package:islami/ui/splash/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final Color lightTheme = const Color(0XFFB7935F);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.transparent,
            appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(color: Colors.black),
                elevation: 0,
                backgroundColor: Colors.transparent,
                centerTitle: true,
                titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'ElMessiri-SemiBold.ttf',
                )),
            colorScheme: ColorScheme.fromSeed(
              seedColor: lightTheme,
              primary: lightTheme,
              onPrimary: Colors.white,
            ),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.white,
            )),

        ////////////////Routes///////////////

        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName: (context) => SplashScreen(),
          HomeScreen.routeName: (context) => HomeScreen(),
          ChapterDetails.routeName: (context) => ChapterDetails(),
        });
  }
}
