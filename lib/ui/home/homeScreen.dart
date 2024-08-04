import 'package:flutter/material.dart';
import 'package:islami/ui/home/hadith/hadithTap.dart';
import 'package:islami/ui/home/quran/quranTab.dart';
import 'package:islami/ui/home/radio/radioTab.dart';
import 'package:islami/ui/home/sebha/tasbehTab.dart';
import 'package:islami/ui/home/settings/settingsTap.dart';
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

  var tab = [QuranTab(), HadithTab(), TasbehTab(), RadioTab(), SettingsTap()];

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
              appTranslations(context).quranTap,
              Theme.of(context).colorScheme.primary,
              iconpath: 'icon_quran.png',
            ),
            BottomBarItem(
              appTranslations(context).hadithTap,
              Theme.of(context).colorScheme.primary,
              iconpath: 'icon_hadith.png',
            ),
            BottomBarItem(
              appTranslations(context).tasbehTap,
              Theme.of(context).colorScheme.primary,
              iconpath: 'icon_sebha.png',
            ),
            BottomBarItem(
              appTranslations(context).radioTap,
              Theme.of(context).colorScheme.primary,
              iconpath: 'icon_radio.png',
            ),
            BottomBarItem(appTranslations(context).settings,
                Theme.of(context).colorScheme.primary,
                mainIcon: const Icon(Icons.settings)),
          ],
        ),
        body: tab[selectedIndex],
      ),
    );
  }
}
