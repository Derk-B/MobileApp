import 'package:flutter/material.dart';

class RestaurantsLoadingIndicator extends StatelessWidget {
  const RestaurantsLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
