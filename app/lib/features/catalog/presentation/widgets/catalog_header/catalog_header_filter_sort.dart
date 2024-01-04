import 'package:app/shared/localizations_ext.dart';
import 'package:flutter/material.dart';

class CatalogHeaderFilterSort extends StatelessWidget {
  const CatalogHeaderFilterSort({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: () {},
            child: Text(
              AppLocalizations.of(context)!.catalog_filter_button,
            ),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: () {},
            child: Text(
              AppLocalizations.of(context)!.catalog_sort_button,
            ),
          ),
        ),
      ],
    );
  }
}
