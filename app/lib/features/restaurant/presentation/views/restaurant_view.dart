import 'package:app/features/catalog/domain/entities/restaurant_entity.dart';
import 'package:app/features/restaurant/presentation/bloc/dish/dish_bloc.dart';
import 'package:app/features/restaurant/presentation/widgets/dishes/dishes_error_view.dart';
import 'package:app/features/restaurant/presentation/widgets/dishes/dishes_list_view.dart';
import 'package:app/features/restaurant/presentation/widgets/dishes/dishes_loading_view.dart';
import 'package:app/features/restaurant/presentation/widgets/header/restaurant_header.dart';
import 'package:app/features/restaurant/presentation/widgets/restaurant_appbar.dart';
import 'package:app/shared/constants/contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RestaurantView extends StatelessWidget {
  final RestaurantEntity restaurant;
  const RestaurantView(this.restaurant, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RestaurantAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.6,
            constraints: BoxConstraints(
              minWidth: LARGE_SCREEN_SIZE as double,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RestaurantHeader(restaurant),
                const Divider(),
                BlocProvider(
                  create: (context) =>
                      DishBloc()..add(LoadDishes(restaurant.restaurantId)),
                  child: BlocBuilder<DishBloc, DishState>(
                    builder: (context, state) {
                      return switch (state) {
                        DishesLoaded() => DishesListView(state.dishes),
                        DishesLoading() => const DishesLoadingView(),
                        DishesError() => const DishesErrorView(),
                      };
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
