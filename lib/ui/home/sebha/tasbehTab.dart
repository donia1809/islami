import 'package:flutter/material.dart';
import 'package:islami/ui/home/sebha/button2.dart';
import 'package:islami/ui/home/sebha/sebha_body.dart';

import 'button1.dart';
import 'const_text.dart';

class TasbehTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 150, left: 100),
      child: Column(
        children: [
          Sebha(),
          SizedBox(
            height: 50,
          ),
          TextName(),
          SizedBox(
            height: 40,
          ),
          Button1(),
          SizedBox(
            height: 40,
          ),
          Button2(),
        ],
      ),
    );
  }
}
