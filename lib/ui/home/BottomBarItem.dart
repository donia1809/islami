import 'package:flutter/material.dart';

import '../imagePath.dart';

class BottomBarItem extends BottomNavigationBarItem {

  BottomBarItem(String title,
      Color backgroundColor,
      {String? iconpath,
        Icon? mainIcon = null})
      : super(
          icon: mainIcon != null
              ? mainIcon
              : ImageIcon(AssetImage(getImagePath(iconpath!))),
          label: title,
          backgroundColor: backgroundColor,
        );
}
