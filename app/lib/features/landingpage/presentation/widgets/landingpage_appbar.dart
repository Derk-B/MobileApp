import 'package:app/main.dart';
import 'package:app/shared/widgets/default_drawer_button.dart';
import 'package:app/shared/widgets/language_button.dart';
import 'package:flutter/material.dart';

class LandingPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LandingPageAppBar({super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  changeLocale(BuildContext context) {
    final app = App.of(context);

    if (app.locale == const Locale("en")) {
      app.setLocale(const Locale("nl"));
    } else {
      app.setLocale(const Locale("en"));
    }
  }

  String languageCode(BuildContext context) {
    final app = App.of(context);

    if (app.locale == const Locale("en")) {
      return "nl";
    } else {
      return "gb";
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) => AppBar(
        title: Text(
          "FoodDeliveryApp.nl",
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        shadowColor: Colors.black,
        surfaceTintColor: Colors.white,
        elevation: 10,
        actions: [
          LanguageButton(context),
          DefaultDrawerButton(constraint),
        ],
      ),
    );
  }
}
