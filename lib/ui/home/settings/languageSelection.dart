import 'package:flutter/material.dart';
import 'package:islami/ui/home/providers/localeProvider.dart';
import 'package:provider/provider.dart';

import '../../imagePath.dart';

class LanguageSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localProvider = Provider.of<LocaleProvider>(context);
    return Column(
      children: [
        Text(
          appTranslations(context).language,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        InkWell(
          onTap: () {
            showLanguageBottomSheet(context);
          },
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(
                  color: Theme.of(context).colorScheme.secondary, width: 2),
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).cardTheme.color,
            ),
            child: Text(
              localProvider.getCurrentLocalText(),
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ),
      ],
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return LanguageBottomSheet();
        });
  }
}

class LanguageBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LocaleProvider localeProvider = Provider.of<LocaleProvider>(context);
    return Container(
      color: Theme.of(context).cardTheme.color,
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                localeProvider.changeLocale('en');
              },
              child: localeProvider.currentLocale == 'en'
                  ? getSelectedItem(
                      context,
                      appTranslations(context).english,
                    )
                  : getUnSelectedItem(
                      context,
                      appTranslations(context).english,
                    )),
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                localeProvider.changeLocale('ar');
              },
              child: localeProvider.currentLocale == 'ar'
                  ? getSelectedItem(
                      context,
                      appTranslations(context).arabic,
                    )
                  : getUnSelectedItem(
                      context,
                      appTranslations(context).arabic,
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
