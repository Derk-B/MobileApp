import 'package:app/shared/widgets/default_drawer_button.dart';
import 'package:app/shared/widgets/language_button.dart';
import 'package:flutter/material.dart';

class CatalogAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String location;
  const CatalogAppbar(this.location, {super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return AppBar(
        title: Text(location),
        surfaceTintColor: Colors.white,
        actions: [
          LanguageButton(context),
          DefaultDrawerButton(constraints),
        ],
      );
    });
  }
}
