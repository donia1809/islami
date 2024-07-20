import 'package:flutter/material.dart';

import '../imagePath.dart';

class BottomBarItem extends BottomNavigationBarItem {
  String title;
  String iconName;

  BottomBarItem({required this.title, required this.iconName})
      : super(
            icon: ImageIcon(AssetImage(getImagePath(iconName))),
            label: title,
            backgroundColor: const Color(0XFFB7935F));
}
