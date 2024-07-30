import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/home/hadith/textStyle.dart';
import 'package:islami/ui/imagePath.dart';

import '../quran/ContainerWidget.dart';
import 'hadithTitle.dart';

class HadithTab extends StatefulWidget {
  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<Hadith> allHadith = [];

  @override
  void initState() {
    readHadithFile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80.0),
      child: RepaintBoundary(
        child: Column(
          children: [
            Image.asset(getImagePath('hadith_logo.png')),
            const ContainerWidget(),
            SizedBox(
              height: 5,
            ),
            TextWidget(),
            SizedBox(
              height: 5,
            ),
            const ContainerWidget(),
            Expanded(
              child: allHadith.isNotEmpty
                  ? ListView.builder(
                      itemBuilder: (context, index) {
                        return HadithTitle(allHadith[index]);
                      },
                      itemCount: allHadith.length,
                    )
                  : const Center(child: CircularProgressIndicator()),
            )
          ],
        ),
      ),
    );
  }

  void readHadithFile() async {
    String fileContent =
        await rootBundle.loadString('assets/Files/ahadeth.txt');
    List<String> separatedHadith = fileContent.split('#');
    for (int i = 0; i < separatedHadith.length; i++) {
      String singleHadith = separatedHadith[i];
      List<String> lines = singleHadith.trim().split('\n');
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join(" ");
      Hadith h = Hadith(title, content);
      allHadith.add(h);
    }
    setState(() {});
  }
}

class Hadith {
  String title;
  String content;

  Hadith(this.title, this.content);
}