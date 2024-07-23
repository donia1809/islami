import 'package:flutter/material.dart';

class Button2 extends StatefulWidget {
  static String text = 'سبحان الله';

  const Button2({super.key});

  @override
  State<Button2> createState() => _Button2State();
}

class _Button2State extends State<Button2> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: () {},
        fillColor: const Color(0XFFB7935F),
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Text(
          Button2.text,
          style: const TextStyle(fontSize: 25.0, color: Colors.white),
        ));
  }
}
