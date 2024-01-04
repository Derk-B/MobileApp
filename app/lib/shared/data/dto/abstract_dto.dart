abstract class DTO {
  const DTO();

  /// Call this to create an instance fo the DTO for the given JSON
  factory DTO.fromJSON(dynamic json) {
    throw UnsupportedError("Abstract class should not be used as DTO");
  }
}
