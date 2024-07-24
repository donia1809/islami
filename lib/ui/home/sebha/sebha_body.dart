import 'package:flutter/material.dart';

import '../../imagePath.dart';
import 'button2.dart';
import 'const_text.dart';

class Sebha extends StatefulWidget {
  const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  double rotationValue = 0;
  int num = 0;
  String text = 'سبحان الله';

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    animation = Tween<double>(
      begin: 0, // Start rotation angle
      end: 1, // End rotation angle
    ).animate(controller);

    // Repeat the animation indefinitely
    controller.repeat();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 150, left: 100, right: 90),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(alignment: Alignment.topCenter, children: [
              RotationTransition(
                turns: animation,
                child: Image.asset(
                  getImagePath('body_sebha_logo.png'),
                ),
              ),
              Transform.translate(
                offset: Offset(0, -75),
                child: Image.asset(
                  getImagePath(
                      'head_sebha_logo.png'), //alignment: Alignment.topCenter
                ),
              ),
            ]),
            const SizedBox(
              height: 50,
            ),
            TextName(),
            const SizedBox(
              height: 40,
            ),
            RawMaterialButton(
                onPressed: incrementCount,
                fillColor: const Color(0XFFB7925F),
                shape: const StadiumBorder(),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  "$num",
                  style: const TextStyle(fontSize: 25.0, color: Colors.black),
                )),
            const SizedBox(
              height: 40,
            ),
            const Button2(),
          ],
        ),
      ),
    );
  }

  void incrementCount() {
    setState(() {
      num++;
      if (num > 33 && (Button2.text == 'سبحان الله')) {
        num = 0;
        Button2.text = 'الحمد لله';
      } else if (num > 33 && Button2.text == 'الحمد لله') {
        num = 0;
        Button2.text = 'الله أكبر';
      } else if ((num > 33) && (Button2.text == 'الله أكبر')) {
        num = 0;
        Button2.text = 'سبحان الله';
      }
    });
    controller.forward(from: 0);
  }

  @override
  void dispose() {
    // Dispose of the animation controller when the widget is disposed
    controller.dispose();
    super.dispose();
  }
}
