import 'package:app/shared/data/dto/abstract_dto.dart';

class CategoryDTO extends DTO {
  final String id;
  final String title;
  final String imgRef;

  const CategoryDTO(
    this.id,
    this.title,
    this.imgRef,
  );

  factory CategoryDTO.fromJSON(String id, dynamic json) {
    return CategoryDTO(
      id,
      json["title"],
      json["imgRef"],
    );
  }
}
