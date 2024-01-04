class CategoryDTO {
  final String title;
  final String imgRef;

  const CategoryDTO(
    this.title,
    this.imgRef,
  );

  static CategoryDTO fromJSON(dynamic json) {
    return CategoryDTO(
      json["title"],
      json["imgRef"],
    );
  }
}
