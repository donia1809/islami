import 'package:flutter/material.dart';

import '../../imagePath.dart';

class TextName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      appTranslations(context).numberOfPraises,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
