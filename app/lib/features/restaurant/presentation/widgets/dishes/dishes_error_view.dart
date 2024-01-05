import 'package:app/shared/localizations_ext.dart';
import 'package:flutter/material.dart';

class DishesErrorView extends StatelessWidget {
  const DishesErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(AppLocalizations.of(context)!.restaurant_dishes_error);
  }
}
