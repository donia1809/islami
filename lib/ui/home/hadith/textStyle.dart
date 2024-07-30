import 'package:flutter/material.dart';

import '../../imagePath.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      appTranslations(context).hadithTitle,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
