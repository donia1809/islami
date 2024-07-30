import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Ahadith',
      style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          fontFamily: 'ElMessiri-SemiBold.ttf'),
    );
  }
}
