import 'package:flutter/material.dart';
import 'package:islami/ui/imagePath.dart';

import 'icons.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 232.0),
        child: Column(
          children: [
            Image.asset(getImagePath(
              'radio_image.png',
            )),
            SizedBox(
              height: 50,
            ),
            Text(
              'إذاعة القرآن الكريم',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: 40,
            ),
            IconWidget(),
          ],
        ),
      ),
    );
  }
}
