import 'package:flutter/material.dart';

import '../../chapterDetails/chapter_details.dart';

class ChapterTitle extends StatelessWidget {
  String title;
  int index;

  ChapterTitle(this.title, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ChapterDetails.routeName,
            arguments: ChapterDetailsArgument(title, index));
      },
      child: Text(title,
          textAlign: TextAlign.end,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}

class ChapterNumber extends StatelessWidget {
  int index;
  int number;

  ChapterNumber(this.index, this.number, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text("$number",
        textAlign: TextAlign.end,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
