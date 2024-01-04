import 'package:app/features/catalog/data/dto/restaurant_dto.dart';
import 'package:app/features/catalog/domain/entities/restaurant_entity.dart';
import 'package:app/shared/domain/entities/abstract_dto_converter.dart';

class RestaurantDTOConverter
    implements DTOConverter<RestaurantDTO, RestaurantEntity> {
  @override
  RestaurantEntity convert(RestaurantDTO dto) {
    return RestaurantEntity(
      dto.restaurantId,
      dto.name,
      dto.address,
      dto.deliveryCost,
      dto.categories,
    );
  }
}
