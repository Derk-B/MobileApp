import 'package:app/features/restaurant/data/repositories/dish_repository.dart';
import 'package:app/features/restaurant/domain/entities/dish_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'dish_event.dart';
part 'dish_state.dart';

class DishBloc extends Bloc<DishEvent, DishState> {
  DishBloc() : super(DishesLoading()) {
    on<LoadDishes>((event, emit) async {
      List<DishEntity> entities =
          await DishRepository().fetchList(event.restaurantId);

      if (entities.isEmpty) emit(DishesError());

      emit(DishesLoaded(entities));
    });
  }
}
