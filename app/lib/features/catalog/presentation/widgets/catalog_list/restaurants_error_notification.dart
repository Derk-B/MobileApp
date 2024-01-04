import 'package:app/shared/localizations_ext.dart';
import 'package:flutter/material.dart';

class RestaurantsErrorNotification extends StatelessWidget {
  const RestaurantsErrorNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(AppLocalizations.of(context)!.catalog_restaurants_error),
    );
  }
}
