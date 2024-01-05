class RestaurantEntity {
  final String name;
  final String address;
  final num deliveryCost;
  final List<String> categories;
  final String restaurantId;
  final List<String> dishIds;

  const RestaurantEntity(
    this.restaurantId,
    this.name,
    this.address,
    this.deliveryCost,
    this.categories,
    this.dishIds,
  );
}
