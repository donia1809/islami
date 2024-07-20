import 'package:flutter/material.dart';

class Button1 extends StatefulWidget {
  @override
  State<Button1> createState() => _Button1State(0);
}

class _Button1State extends State<Button1> {
  int num = 0;
  String text = 'سبحان الله';

  //late AnimationController controller;
  _Button1State(this.num);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RawMaterialButton(
            onPressed: () {
              setState(() {
                incrementCount();
              });
            },
            fillColor: const Color(0XFFB7925F),
            shape: const StadiumBorder(),
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              "$num",
              style: const TextStyle(fontSize: 25.0, color: Colors.black),
            )),
      ],
    );
  }

  void incrementCount() {
    if (num >= 33) {
      num = 0;
      text == "الحمد لله";
    } else if (num >= 33) {
      num = 0;
      text == "الله اكبر";
    } else {
      num++;
      //controller.forward(from: 0);
    }
  }
}
