import 'package:flutter/material.dart';

class TextName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Number of praises',
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
