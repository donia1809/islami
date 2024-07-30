import 'package:flutter/material.dart';

import '../imagePath.dart';

class BottomBarItem extends BottomNavigationBarItem {
  String title;
  String iconName;
  Color backgroundColor;

  BottomBarItem(
      {required this.title,
      required this.iconName,
      required this.backgroundColor})
      : super(
            icon: ImageIcon(AssetImage(getImagePath(iconName))),
            label: title,
          backgroundColor: backgroundColor,
        );
}
