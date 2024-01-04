import 'package:app/main.dart';
import 'package:circle_flags/circle_flags.dart';
import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  BuildContext parentContext;
  LanguageButton(this.parentContext, {super.key});

  changeLocale(BuildContext context) {
    final app = App.of(context);

    if (app.locale == const Locale("en")) {
      app.setLocale(const Locale("nl"));
    } else {
      app.setLocale(const Locale("en"));
    }
  }

  String languageCode() {
    final app = App.of(parentContext);

    if (app.locale == const Locale("en")) {
      return "nl";
    } else {
      return "gb";
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => changeLocale(context),
      icon: CircleFlag(
        languageCode(),
        size: kToolbarHeight / 2,
      ),
    );
  }
}
