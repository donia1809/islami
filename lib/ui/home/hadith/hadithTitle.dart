import 'package:flutter/material.dart';
import 'package:islami/ui/HadithDetails/Hadith_Details.dart';
import 'package:islami/ui/home/hadith/hadithTap.dart';

class HadithTitle extends StatelessWidget {
  Hadith hadith;

  HadithTitle(this.hadith, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, HadithDetailsScreen.routeName,
              arguments: hadith);
        },
        child: Text(
          hadith.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
