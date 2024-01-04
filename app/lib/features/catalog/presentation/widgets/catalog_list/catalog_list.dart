import 'package:app/features/catalog/presentation/bloc/restaurants/restaurants_bloc.dart';
import 'package:app/features/catalog/presentation/widgets/catalog_list/restaurants_error_notification.dart';
import 'package:app/features/catalog/presentation/widgets/catalog_list/restaurants_list.dart';
import 'package:app/features/catalog/presentation/widgets/catalog_list/restaurants_loading_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RestaurantBloc()..add(LoadRestaurant()),
      child: BlocBuilder<RestaurantBloc, RestaurantState>(
        builder: (context, state) {
          return switch (state) {
            RestaurantsLoaded() => RestaurantsList(state.restaurants),
            RestaurantsLoading() => const RestaurantsLoadingIndicator(),
            RestaurantsError() => const RestaurantsErrorNotification(),
          };
        },
      ),
    );
  }
}
