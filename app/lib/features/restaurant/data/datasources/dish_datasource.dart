import 'package:app/features/restaurant/data/dto/dish_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DishDatasource {
  Future<List<DishDTO>> fetchAll(String restaurantId) {
    return FirebaseFirestore.instance
        .collection("dishes")
        .where("restaurant", isEqualTo: restaurantId)
        .get()
        .then(
          (value) =>
              value.docs.map((e) => DishDTO.fromJSON(e.id, e.data())).toList(),
        )
        .onError((error, stackTrace) => List.empty());
  }
}
