import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../imagePath.dart';
import '../providers/ThemeProvider.dart';
import 'button2.dart';
import 'const_text.dart';

class Sebha extends StatefulWidget {
  const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int num = 0;
  String text = 'سبحان الله';
  double rotateAngle = 0;

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    bool isDark = themeProvider.isDark();
    return Padding(
      padding: const EdgeInsets.only(top: 150, left: 100, right: 90),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(alignment: Alignment.topCenter, children: [
              Transform.rotate(
                angle: rotateAngle,
                child: Image.asset(
                  getImagePath(
                      isDark ? 'body_sebha_dark.png' : 'body_sebha_logo.png'),
                ),
              ),
              Transform.translate(
                offset: Offset(0, -75),
                child: Image.asset(
                  getImagePath(isDark
                      ? 'head_sebha_dark.png'
                      : 'head_sebha_logo.png'), //alignment: Alignment.topCenter
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
                fillColor: Color(0XFFB7925F).withOpacity(0.57),
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
            Button2(),
          ],
        ),
      ),
    );
  }

  void incrementCount() {
    setState(() {
      num++;
      rotateAngle += 8;
      if (num >= 34 && (Button2.text == 'سبحان الله')) {
        num = 0;
        Button2.text = 'الحمد لله';
      } else if (num >= 34 && Button2.text == 'الحمد لله') {
        num = 0;
        Button2.text = 'الله أكبر';
      } else if (num >= 34 && Button2.text == 'الله أكبر') {
        num = 0;
        Button2.text = 'سبحان الله';
      }
    });
  }
}
