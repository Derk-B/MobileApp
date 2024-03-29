import 'package:app/features/catalog/data/datasources/category_datasource.dart';
import 'package:app/features/catalog/data/dto/category_dto.dart';
import 'package:app/shared/domain/repositories/abstract_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryRepository extends Repository<CategoryDTO> {
  @override
  Future<CategoryDTO?> fetchById(String id) {
    final datasource = CategoryDatasource().fetchRef();

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
      (value) => CategoryDTO.fromJSON(value.id, value.data()),
    );
  }

  /// Get all categories from the database, there is no need to filter.
  @override
  Future<List<CategoryDTO>?> fetchList() async {
    final datasource = CategoryDatasource().fetchRef();

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

    return documents.map((e) => CategoryDTO.fromJSON(e.id, e.data())).toList();
  }
}
