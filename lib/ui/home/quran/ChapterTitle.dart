import 'package:flutter/material.dart';

import '../../chapterDetails/chapter_details.dart';

class ChapterTitle extends StatelessWidget {
  String title;
  int index;

  ChapterTitle(this.index, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ChapterDetails.routeName,
            arguments: ChapterDetailsArgument(index, title));
      },
      child: Text(title,
          textAlign: TextAlign.end,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          )),
    );
  }
}

class ChapterNumber extends StatelessWidget {
  int index;
  int number;

  ChapterNumber(this.index, this.number, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ChapterDetails.routeName,
            arguments: ChapterNumberDetails(index, number));
      },
      child: Text("$number",
          textAlign: TextAlign.end,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          )),
    );
  }
}
