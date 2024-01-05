import 'package:app/features/restaurant/data/datasources/dish_datasource.dart';
import 'package:app/features/restaurant/data/dto/dish_dto.dart';
import 'package:app/features/restaurant/domain/entities/dish_dto_converter.dart';
import 'package:app/features/restaurant/domain/entities/dish_entity.dart';

class DishRepository {
  Future<List<DishEntity>> fetchList(String restaurantId) async {
    DishDatasource datasource = DishDatasource();

    List<DishDTO> dtos = await datasource.fetchAll(restaurantId);
    return dtos.map(DishDtoConverter.convert).toList();
  }
}
