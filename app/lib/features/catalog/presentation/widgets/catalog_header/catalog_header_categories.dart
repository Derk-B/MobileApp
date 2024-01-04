import 'package:app/features/catalog/presentation/bloc/categories/categories_bloc.dart';
import 'package:app/features/catalog/presentation/widgets/catalog_header/categories/categories_error.dart';
import 'package:app/features/catalog/presentation/widgets/catalog_header/categories/categories_loaded.dart';
import 'package:app/features/catalog/presentation/widgets/catalog_header/categories/categories_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatalogHeaderCategories extends StatelessWidget {
  const CatalogHeaderCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: BlocProvider(
        create: (context) => CategoriesBloc()..add(LoadCategories()),
        child: BlocBuilder<CategoriesBloc, CategoriesState>(
          builder: (context, state) {
            return switch (state) {
              CategoriesLoaded() => CategoriesList(state.categories),
              CategoriesLoading() => const CategoriesLoadingIndicator(),
              CategoriesError() => const CategoriesErrorNotification(),
            };
          },
        ),
      ),
    );
  }
}
