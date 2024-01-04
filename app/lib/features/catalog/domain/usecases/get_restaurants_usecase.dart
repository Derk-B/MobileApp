import 'package:app/features/catalog/data/dto/restaurant_dto.dart';
import 'package:app/features/catalog/data/repositories/restaurant_repository.dart';
import 'package:app/features/catalog/domain/entities/restaurant_dto_converter.dart';
import 'package:app/features/catalog/domain/entities/restaurant_entity.dart';
import 'package:app/shared/domain/usecase/abstract_usecase.dart';

class GetRestaurantsUseCase extends UseCase<RestaurantEntity> {
  @override
  Future<List<RestaurantEntity>> call() async {
    RestaurantRepository repository = RestaurantRepository();

    List<RestaurantDTO>? fetchedEntities = await repository.fetchList();

    if (fetchedEntities == null) return List.empty();

    return fetchedEntities.map(RestaurantDTOConverter().convert).toList();
  }
}
