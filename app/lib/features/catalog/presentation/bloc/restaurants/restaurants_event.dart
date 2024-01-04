part of 'restaurants_bloc.dart';

@immutable
sealed class RestaurantsEvent {}

final class LoadRestaurant extends RestaurantsEvent {}
