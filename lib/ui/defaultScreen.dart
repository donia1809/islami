import 'package:flutter/material.dart';

import 'imagePath.dart';

class DefaultScreen extends StatelessWidget {
  Widget body;

  DefaultScreen({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(getImagePath('default_bg.png')),
        Scaffold(
          appBar: AppBar(
            title: const Text('Islami'),
          ),
        ),
        body,
      ],
    );
  }
}
