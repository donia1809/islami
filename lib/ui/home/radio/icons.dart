import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 120),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.skip_previous_rounded, textDirection: TextDirection.ltr),
          Icon(
            Icons.play_arrow_rounded,
            size: 32,
          ),
          Icon(Icons.skip_next_rounded, textDirection: TextDirection.rtl)
        ],
      ),
    );
  }
}
