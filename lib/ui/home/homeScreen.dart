import 'package:flutter/material.dart';
import 'package:islami/ui/home/hadith/hadithTap.dart';
import 'package:islami/ui/home/quran/quranTab.dart';
import 'package:islami/ui/home/radio/radioTab.dart';
import 'package:islami/ui/home/sebha/tasbehTab.dart';
import 'package:islami/ui/imagePath.dart';

import '../defaultScreen.dart';
import 'BottomBarItem.dart';

////////////////////////////////////////////////////

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

////////////////////////////////////////////////////

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  var tab = [QuranTab(), HadithTab(), TasbehTab(), RadioTab()];

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      body: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomBarItem(
                iconName: 'icon_quran.png',
                title: appTranslations(context).quranTap,
                backgroundColor: Theme.of(context).colorScheme.primary),
            BottomBarItem(
                iconName: 'icon_hadith.png',
                title: appTranslations(context).hadithTap,
                backgroundColor: Theme.of(context).colorScheme.primary),
            BottomBarItem(
                iconName: 'icon_sebha.png',
                title: appTranslations(context).tasbehTap,
                backgroundColor: Theme.of(context).colorScheme.primary),
            BottomBarItem(
                iconName: 'icon_radio.png',
                title: appTranslations(context).radioTap,
                backgroundColor: Theme.of(context).colorScheme.primary),
          ],
        ),
        body: tab[selectedIndex],
      ),
    );
  }
}
