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
            style: TextButtonTheme.of(context).style?.copyWith(
                  backgroundColor: MaterialStatePropertyAll(
                    Theme.of(context).colorScheme.secondary,
                  ),
                ),
            onPressed: () {},
            child: Text(
              "Filter",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            style: TextButtonTheme.of(context).style?.copyWith(
                  backgroundColor: MaterialStatePropertyAll(
                    Theme.of(context).colorScheme.secondary,
                  ),
                ),
            onPressed: () {},
            child: Text(
              "Sorteer",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
