import 'package:app/features/catalog/domain/entities/restaurant_entity.dart';
import 'package:app/features/catalog/domain/usecases/get_restaurants_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'restaurants_event.dart';
part 'restaurants_state.dart';

class RestaurantBloc extends Bloc<RestaurantsEvent, RestaurantState> {
  RestaurantBloc() : super(RestaurantsLoading()) {
    on<LoadRestaurant>((event, emit) async {
      List<RestaurantEntity> entities = await GetRestaurantsUseCase().call();

      if (entities.isEmpty) {
        return emit(RestaurantsError());
      }

      emit(RestaurantsLoaded(restaurants: entities));
    });
  }
}
