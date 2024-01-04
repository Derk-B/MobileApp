import 'package:app/features/catalog/data/datasources/restaurant_datasource.dart';
import 'package:app/features/catalog/data/dto/restaurant_dto.dart';
import 'package:app/shared/domain/repositories/abstract_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RestaurantRepository extends Repository<RestaurantDTO> {
  @override
  Future<RestaurantDTO?> fetchById(String id) {
    final datasource = RestaurantDatasource().fetchRef();

    /// Returns null when Firebase returns an error.
    /// Possible errors could be: user has not rights or collection does not exist.
    /// In that case we return null and let the caller deal with that case.
    Future<DocumentSnapshot> document;
    try {
      document = datasource.doc(id).get();
    } catch (_) {
      return Future.value(null);
    }

    return document.then(
      (value) => RestaurantDTO.fromJSON(value.id, value.data()),
    );
  }

  @override
  Future<List<RestaurantDTO>?> fetchList() async {
    final datasource = RestaurantDatasource().fetchRef();

    /// Returns null when Firebase returns an error.
    /// Possible errors could be: user has not rights or collection does not exist.
    /// In that case we return null and let the caller deal with that case.
    List<DocumentSnapshot> documents;
    try {
      Future<QuerySnapshot> snapshot = datasource.get();
      documents = await snapshot.then((value) => value.docs);
    } catch (_) {
      return Future.value(null);
    }

    return documents
        .map((e) => RestaurantDTO.fromJSON(e.id, e.data()))
        .toList();
  }
}
