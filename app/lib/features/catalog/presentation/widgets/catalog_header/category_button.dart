import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String category;
  const CategoryButton(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        style: TextButtonTheme.of(context).style?.copyWith(
              backgroundColor: const MaterialStatePropertyAll(Colors.white),
              foregroundColor: MaterialStatePropertyAll(
                  Theme.of(context).colorScheme.onSecondary),
            ),
        onPressed: () {},
        child: Column(
          children: [
            Image.asset(
              "lib/assets/images/${category.toLowerCase()}.png",
              height: 32,
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(category),
          ],
        ),
      ),
    );
  }
}
