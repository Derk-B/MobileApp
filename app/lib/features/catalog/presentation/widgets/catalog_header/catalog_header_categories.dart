import 'package:app/features/catalog/presentation/widgets/catalog_header/category_button.dart';
import 'package:flutter/material.dart';

class CatalogHeaderCategories extends StatelessWidget {
  CatalogHeaderCategories({super.key});

  final List<String> list = List.from(["Burger", "Pizza", "Sushi", "Vegan"]);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => CategoryButton(list[index]),
      ),
    );
  }
}
