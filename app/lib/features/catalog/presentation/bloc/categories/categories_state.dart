part of 'categories_bloc.dart';

@immutable
sealed class CategoriesState extends Equatable {
  @override
  List<Object> get props => [];
}

final class CategoriesLoaded extends CategoriesState {
  final List<CategoryEntity> categories;

  CategoriesLoaded({required this.categories});

  @override
  List<Object> get props => [];
}

final class CategoriesLoading extends CategoriesState {
  @override
  List<Object> get props => [];
}

final class CategoriesError extends CategoriesState {
  @override
  List<Object> get props => [];
}
