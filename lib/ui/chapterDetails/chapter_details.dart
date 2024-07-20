import 'package:flutter/material.dart';

import '../defaultScreen.dart';
import '../home/quran/ContainerWidget.dart';

////////////////////////////////////////////////////

class ChapterDetails extends StatelessWidget {
  static const String routeName = 'ChapterDetails';

  const ChapterDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var argument =
        ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgument;

    return DefaultScreen(
      body: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        margin:
            const EdgeInsets.only(top: 120, left: 29, right: 29, bottom: 80),
        elevation: 0,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              argument.chapterTitle,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: ContainerWidget(),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {},
              itemCount: 100,
            ),
          )
        ]),
      ),
    );
  }
}

////////////////////////////////////////////////////

class ChapterDetailsArgument {
  String chapterTitle;
  int chapterIndex;

  ChapterDetailsArgument(this.chapterIndex, this.chapterTitle);
}

////////////////////////////////////////////////////

class ChapterNumberDetails {
  int chapterIndex;
  int chapterNumber;

  ChapterNumberDetails(this.chapterIndex, this.chapterNumber);
}
