import 'package:flutter/cupertino.dart';

class table extends StatelessWidget {
  String text;

  table(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          fontFamily: 'ElMessiri-SemiBold.ttf'),
    );
  }
}
