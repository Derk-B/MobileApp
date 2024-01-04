part of 'categories_bloc.dart';

@immutable
sealed class CategoriesEvent {}

final class LoadCategories extends CategoriesEvent {}
