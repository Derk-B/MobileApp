import 'package:flutter/material.dart';

class LandingPageMainTitle extends StatelessWidget {
  const LandingPageMainTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Bestel eten en meer",
              style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(height: 10),
          Text(
            "Restaurants en boodschappen in de buurt",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
