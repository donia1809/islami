import 'package:flutter/material.dart';

import '../../imagePath.dart';

class Sebha extends StatefulWidget {
  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    animation = Tween<double>(
      begin: 0, // Start rotation angle
      end: 2 * 3.141, // End rotation angle
    ).animate(controller);

    // Repeat the animation indefinitely
    controller.repeat();
  }

  @override
  void dispose() {
    // Dispose of the animation controller when the widget is disposed
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        getImagePath('head_sebha_logo.png'),
      ),
      SizedBox(
        height: 0,
      ),
      AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return Transform.rotate(
            angle: 90,
            child: Image.asset(
              getImagePath('body_sebha_logo.png'),
            ),
          );
        },
      ),
    ]);
  }
}
