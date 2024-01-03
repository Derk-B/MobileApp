import 'package:app/shared/localizations_ext.dart';
import 'package:flutter/material.dart';

class DrawerHeaderAccountName extends StatelessWidget {
  final String name;
  const DrawerHeaderAccountName(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "${AppLocalizations.of(context)!.landingpage_drawer_welcome_user} $name",
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}
