import 'package:app/features/catalog/domain/entities/category_entity.dart';
import 'package:app/features/catalog/presentation/widgets/catalog_header/category_button.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  final List<CategoryEntity> list;
  const CategoriesList(this.list, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: list.length,
      shrinkWrap: true,
      itemBuilder: (context, index) => CategoryButton(list[index].title),
    );
  }
}
