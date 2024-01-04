import 'package:app/features/catalog/domain/entities/restaurant_entity.dart';
import 'package:app/features/catalog/presentation/widgets/catalog_list/restaurant_card.dart';
import 'package:flutter/material.dart';

class RestaurantsList extends StatelessWidget {
  final List<RestaurantEntity> restaurants;

  const RestaurantsList(this.restaurants, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          return RestaurantCard(restaurants[index]);
        },
      ),
    );
  }
}
