part of 'dish_bloc.dart';

@immutable
sealed class DishState extends Equatable {
  @override
  List<Object> get props => [];
}

final class DishesLoading extends DishState {
  @override
  List<Object> get props => [];
}

final class DishesLoaded extends DishState {
  final List<DishEntity> dishes;

  DishesLoaded(this.dishes);

  @override
  List<Object> get props => [];
}

final class DishesError extends DishState {
  @override
  List<Object> get props => [];
}
