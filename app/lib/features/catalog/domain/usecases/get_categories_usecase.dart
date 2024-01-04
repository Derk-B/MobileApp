import 'package:app/features/catalog/data/repositories/category_repository.dart';
import 'package:app/features/catalog/domain/entities/category_entity.dart';
import 'package:app/shared/domain/usecase/abstract_usecase.dart';

class GetCategoriesUseCase extends UseCase<CategoryEntity> {
  @override
  Future<List<CategoryEntity>> call() async {
    CategoryRepository repository = CategoryRepository();

    List? fetchedEntities = await repository.fetchList();

    if (fetchedEntities == null) return List.empty();

    return fetchedEntities
        .map((e) => CategoryEntity(e.title, e.imgRef))
        .toList();
  }
}
