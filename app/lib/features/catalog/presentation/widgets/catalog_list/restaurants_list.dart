import 'package:app/features/catalog/domain/entities/restaurant_entity.dart';
import 'package:app/features/catalog/presentation/widgets/catalog_list/restaurant_card.dart';
import 'package:app/shared/constants/contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

class RestaurantsList extends StatelessWidget {
  final List<RestaurantEntity> restaurants;

  const RestaurantsList(this.restaurants, {super.key});

  double _calculateAspectRatio(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return width / height;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < LARGE_SCREEN_SIZE) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: restaurants.length,
          itemBuilder: (context, index) {
            return RestaurantCard(restaurants[index]);
          },
        );
      } else {
        return LayoutGrid(
          columnSizes: [1.fr, 1.fr],
          rowSizes: const [auto, auto],
          rowGap: 40,
          columnGap: 24,
          children: List.generate(
            restaurants.length,
            (index) => RestaurantCard(restaurants[index]),
          ),
        );
      }
    });
  }
}
