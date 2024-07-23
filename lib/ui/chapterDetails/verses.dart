import 'package:flutter/material.dart';

class VerseContent extends StatelessWidget {
  String content;
  int index;

  VerseContent(this.index, this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text('$content {${index + 1} }',
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.end,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          )),
    );
  }
}
