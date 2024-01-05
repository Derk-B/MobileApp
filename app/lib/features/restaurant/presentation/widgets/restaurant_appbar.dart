import 'package:app/shared/localizations_ext.dart';
import 'package:app/shared/widgets/default_drawer_button.dart';
import 'package:app/shared/widgets/language_button.dart';
import 'package:flutter/material.dart';

class RestaurantAppbar extends StatelessWidget implements PreferredSizeWidget {
  const RestaurantAppbar({super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return AppBar(
        surfaceTintColor: Theme.of(context).colorScheme.primary,
        title: Center(
          child: Text(
            AppLocalizations.of(context)!.restaurant_dishes_work_in_progress,
            style: const TextStyle(color: Colors.red),
          ),
        ),
        actions: [
          LanguageButton(context),
          DefaultDrawerButton(constraints),
        ],
      );
    });
  }
}
