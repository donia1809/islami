import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../imagePath.dart';
import '../providers/ThemeProvider.dart';

class ThemeSelection extends StatelessWidget {
  const ThemeSelection({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Column(
      children: [
        Text(
          appTranslations(context).theme,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        InkWell(
          onTap: () {
            showThemeBottomSheet(context);
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(
                  color: Theme.of(context).colorScheme.secondary, width: 2),
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).cardTheme.color,
            ),
            child: Text(
              themeProvider.getCurrentThemeText(),
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ),
      ],
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return const ThemeBottomSheet();
        });
  }
}

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      color: Theme.of(context).cardTheme.color,
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                setState(() {
                  themeProvider.changeTheme(ThemeMode.light);
                });
              },
              child: themeProvider.isDark()
                  ? getUnSelectedItem(
                      context,
                      appTranslations(context).light,
                    )
                  : getSelectedItem(
                      context,
                      appTranslations(context).light,
                    )),
          const SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                setState(() {
                  themeProvider.changeTheme(ThemeMode.dark);
                });
              },
              child: themeProvider.isDark()
                  ? getSelectedItem(
                      context,
                      appTranslations(context).dark,
                    )
                  : getUnSelectedItem(
                      context,
                      appTranslations(context).dark,
                    )),
        ],
      ),
    );
  }
}

Widget getSelectedItem(BuildContext context, String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: Theme.of(context).colorScheme.secondary),
      ),
      Icon(Icons.check, color: Theme.of(context).colorScheme.secondary)
    ],
  );
}

Widget getUnSelectedItem(BuildContext context, String text) {
  return Row(
    children: [
      Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.secondary,
            ),
      ),
    ],
  );
}
