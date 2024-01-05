import 'package:app/features/restaurant/domain/entities/dish_entity.dart';
import 'package:app/shared/localizations_ext.dart';
import 'package:flutter/material.dart';

class DishCard extends StatelessWidget {
  final DishEntity dish;
  const DishCard(this.dish, {super.key});

  final Size imageSize = const Size(120, 150);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: imageSize.height,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: imageSize.width,
              child: Center(
                child: Image.asset(
                  "lib/assets/images/banner.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dish.title,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      dish.description,
                      maxLines: 2,
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Text("€${dish.price.toString().padRight(4, "0")}"),
                        const Spacer(),
                        TextButton.icon(
                          onPressed: () {},
                          style: TextButtonTheme.of(context).style!.copyWith(
                              backgroundColor: MaterialStatePropertyAll(
                                  Theme.of(context).colorScheme.secondary)),
                          icon: const Icon(Icons.add),
                          label: Text(AppLocalizations.of(context)!
                              .restaurant_dishes_add),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
