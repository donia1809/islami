import 'package:flutter/material.dart';

class table extends StatelessWidget {
  String text;

  table(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
