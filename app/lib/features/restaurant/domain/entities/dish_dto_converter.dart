import 'package:app/features/restaurant/data/dto/dish_dto.dart';
import 'package:app/features/restaurant/domain/entities/dish_entity.dart';

class DishDtoConverter {
  static DishEntity convert(DishDTO dto) {
    return DishEntity(
      dto.dishId,
      dto.title,
      dto.price,
      dto.description,
    );
  }
}
