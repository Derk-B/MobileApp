part of 'categories_bloc.dart';

@immutable
sealed class CategoriesState extends Equatable {
  List<Object> get props => [];
}

final class CategoriesInitial extends CategoriesState {
  @override
  List<Object> get props => [];
}

final class CategoriesLoading extends CategoriesState {
  @override
  List<Object> get props => [];
}
