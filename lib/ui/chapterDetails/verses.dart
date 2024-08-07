import 'package:flutter/material.dart';

class VerseContent extends StatelessWidget {
  String content;
  int index;

  VerseContent(this.content, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text('$content {${index + 1} }',
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.end,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
