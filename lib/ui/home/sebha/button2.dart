import 'package:flutter/material.dart';

class Button2 extends StatelessWidget {
  String text = 'سبحان الله';

  Button2({super.key});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: () {},
        fillColor: const Color(0XFFB7935F),
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Text(
          text,
          style: const TextStyle(fontSize: 25.0, color: Colors.white),
        ));
  }
}
