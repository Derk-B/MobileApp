import 'package:app/features/catalog/domain/entities/restaurant_entity.dart';
import 'package:app/shared/localizations_ext.dart';
import 'package:flutter/material.dart';

class RestaurantHeader extends StatelessWidget {
  final RestaurantEntity restaurant;

  const RestaurantHeader(this.restaurant, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        restaurant.name,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      Text(
          "${AppLocalizations.of(context)!.restaurant_address}: ${restaurant.address}"),
      const SizedBox(height: 24),
    ]);
  }
}
