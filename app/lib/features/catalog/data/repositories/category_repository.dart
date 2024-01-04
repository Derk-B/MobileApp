import 'package:app/features/catalog/data/datasources/category_datasource.dart';
import 'package:app/features/catalog/data/dto/category_dto.dart';
import 'package:app/shared/domain/repositories/abstract_repository.dart';

class CategoryRepository extends Repository<CategoryDTO> {
  @override
  Future<CategoryDTO> fetchById(String id) {
    final datasource = CategoryDatasource().fetchRef();

    return datasource.doc(id).get().then(
          (value) => CategoryDTO.fromJSON(value.data()),
        );
  }

  /// Get all categories from the database, there is no need to filter.
  @override
  Future<List<CategoryDTO>> fetchList() {
    final datasource = CategoryDatasource().fetchRef();

    return datasource.get().then((value) =>
        value.docs.map((e) => CategoryDTO.fromJSON(e.data())).toList());
  }
}
