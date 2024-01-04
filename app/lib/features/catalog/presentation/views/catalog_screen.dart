import 'package:app/features/catalog/presentation/widgets/catalog_appbar.dart';
import 'package:app/features/catalog/presentation/widgets/catalog_header/catalog_header_categories.dart';
import 'package:app/features/catalog/presentation/widgets/catalog_header/catalog_header_filter_sort.dart';
import 'package:app/features/catalog/presentation/widgets/catalog_list/catalog_list.dart';
import 'package:app/shared/widgets/default_drawer/default_drawer.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  final String location;
  const CatalogScreen({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CatalogAppbar(location),
      endDrawer: const DefaultDrawer(),
      body: const Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CatalogHeaderCategories(),
            Divider(),
            CatalogHeaderFilterSort(),
            CatalogList(),
          ],
        ),
      ),
    );
  }
}
