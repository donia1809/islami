import 'package:flutter/material.dart';
import 'package:islami/ui/home/hadith/hadithTap.dart';

import '../defaultScreen.dart';
import '../home/hadith/ContainerWidget.dart';

class HadithDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadith-details';

  @override
  Widget build(BuildContext context) {
    Hadith hadith = ModalRoute.of(context)?.settings.arguments as Hadith;
    return DefaultScreen(
      body: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        margin:
            const EdgeInsets.only(top: 120, left: 29, right: 29, bottom: 80),
        elevation: 0,
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Text(
                hadith.title,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: ContainerWidget(),
          ),
          Expanded(
            child: (Text(
              hadith.content,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            )),
          )
        ]),
      ),
    );
  }
}
