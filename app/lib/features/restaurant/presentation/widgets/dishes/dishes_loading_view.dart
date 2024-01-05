import 'package:flutter/material.dart';

class DishesLoadingView extends StatelessWidget {
  const DishesLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
