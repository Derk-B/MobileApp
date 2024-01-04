import 'package:app/shared/data/dto/abstract_dto.dart';

class RestaurantDTO extends DTO {
  final String name;
  final String address;
  final num deliveryCost;
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
  factory RestaurantDTO.fromJSON(String id, dynamic json) {
    return RestaurantDTO(
      id,
      json["name"],
      json["address"],
      json["deliveryCost"],
      (json["categories"] as List).map((e) => e.toString()).toList(),
    );
  }
}
