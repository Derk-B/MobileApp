import 'package:app/features/catalog/domain/entities/category_entity.dart';
import 'package:app/features/catalog/domain/usecases/get_categories_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(CategoriesLoading()) {
    on<CategoriesEvent>((event, emit) async {
      List<CategoryEntity> entities = await GetCategoriesUseCase().call();

      if (entities.isEmpty) {
        return emit(CategoriesError());
      }

      emit(CategoriesLoaded(categories: entities));
    });
  }
}
