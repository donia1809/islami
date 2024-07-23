import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/chapterDetails/verses.dart';

import '../defaultScreen.dart';
import '../home/quran/ContainerWidget.dart';

////////////////////////////////////////////////////

class ChapterDetails extends StatefulWidget {
  static const String routeName = 'ChapterDetails';

  const ChapterDetails({super.key});

  @override
  State<ChapterDetails> createState() => _ChapterDetailsState();
}

class _ChapterDetailsState extends State<ChapterDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var argument =
        ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgument;
    if (verses.isEmpty) {
      readFileData(argument.chapterIndex);
    }
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
            child: verses.isNotEmpty
                ? ListView.separated(
                    itemBuilder: (context, index) {
                      return VerseContent(
                        index,
                        verses[index],
                      );
                    },
                    itemCount: verses.length,
                    separatorBuilder: (context, index) => Container(
                          height: 1,
                          width: double.infinity,
                          color: const Color(0XFFB7935F),
                          margin: const EdgeInsets.symmetric(horizontal: 64),
                        ))
                : const Center(child: CircularProgressIndicator()),
          ),
        ]),
      ),
    );
  }

  void readFileData(int fileIndex) async {
    String fileContent =
        await rootBundle.loadString('assets/files${fileIndex + 1}.txt');
    List<String> lines = fileContent.trim().split('\n');
    setState(() {
      verses = lines;
    });
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
