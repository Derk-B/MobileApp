import 'package:app/shared/data/dto/abstract_dto.dart';

class DishDTO extends DTO {
  final String dishId;
  final String title;
  final num price;
  final String description;
  final String restaurant;
  final String? imgRef;

  const DishDTO(this.dishId, this.title, this.price, this.description,
      this.restaurant, this.imgRef);

  @override
  factory DishDTO.fromJSON(String id, dynamic json) {
    return DishDTO(
      id,
      json["title"],
      json["price"],
      json["description"],
      json["restaurant"],
      json["imgRef"],
    );
  }
}
