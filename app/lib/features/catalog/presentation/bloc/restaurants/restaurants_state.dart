part of 'restaurants_bloc.dart';

@immutable
sealed class RestaurantState extends Equatable {
  @override
  List<Object> get props => [];
}

final class RestaurantsLoading extends RestaurantState {
  @override
  List<Object> get props => [];
}

final class RestaurantsLoaded extends RestaurantState {
  final List<RestaurantEntity> restaurants;

  RestaurantsLoaded({required this.restaurants});

  @override
  List<Object> get props => [];
}

final class RestaurantsError extends RestaurantState {
  @override
  List<Object> get props => [];
}
