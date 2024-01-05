part of 'dish_bloc.dart';

@immutable
sealed class DishEvent {}

final class LoadDishes extends DishEvent {
  final String restaurantId;

  LoadDishes(this.restaurantId);
}
