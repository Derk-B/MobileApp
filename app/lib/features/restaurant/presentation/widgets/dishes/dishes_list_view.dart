import 'package:app/features/restaurant/domain/entities/dish_entity.dart';
import 'package:app/features/restaurant/presentation/widgets/dishes/dish_card.dart';
import 'package:app/shared/constants/contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

class DishesListView extends StatelessWidget {
  final List<DishEntity> dishes;
  const DishesListView(this.dishes, {super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < LARGE_SCREEN_SIZE) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: dishes.length,
          itemBuilder: (context, index) => DishCard(dishes[index]),
        );
      } else {
        return LayoutGrid(
          columnSizes: [1.fr, 1.fr],
          rowSizes: const [auto, auto],
          rowGap: 40,
          columnGap: 24,
          children: List.generate(
            dishes.length,
            (index) => DishCard(dishes[index]),
          ),
        );
      }
    });
  }
}
