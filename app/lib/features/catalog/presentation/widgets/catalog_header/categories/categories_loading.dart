import 'package:flutter/material.dart';

class CategoriesLoadingIndicator extends StatelessWidget {
  const CategoriesLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
