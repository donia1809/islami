import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.skip_previous_rounded),
          Icon(
            Icons.play_arrow_rounded,
            size: 32,
          ),
          Icon(Icons.skip_next_rounded)
        ],
      ),
    );
  }
}
