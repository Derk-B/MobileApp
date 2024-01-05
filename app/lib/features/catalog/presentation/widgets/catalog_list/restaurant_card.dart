import 'package:app/features/catalog/domain/entities/restaurant_entity.dart';
import 'package:app/features/restaurant/presentation/views/restaurant_view.dart';
import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  final RestaurantEntity restaurant;
  const RestaurantCard(this.restaurant, {super.key});

  void _navigateToRestaurantView(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => RestaurantView(restaurant)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SizedBox(
            height: 100,
            child: Image.asset(
              "lib/assets/images/banner.png",
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(restaurant.address),
                    Text(
                        "€${restaurant.deliveryCost.toString().padRight(4, "0")}"),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.add,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    onPressed: () => _navigateToRestaurantView(context),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
