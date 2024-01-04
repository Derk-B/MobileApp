import 'package:app/shared/data/dto/abstract_dto.dart';

class RestaurantDTO extends DTO {
  final String name;
  final String address;
  final String deliveryCost;
  final List<String> categories;
  final String restaurantId;

  const RestaurantDTO(
    this.restaurantId,
    this.name,
    this.address,
    this.deliveryCost,
    this.categories,
  );

  @override
  factory RestaurantDTO.fromJSON(dynamic json) {
    return RestaurantDTO(
      json["restaurantId"],
      json["name"],
      json["address"],
      json["deliveryCost"],
      json["categories"],
    );
  }
}
