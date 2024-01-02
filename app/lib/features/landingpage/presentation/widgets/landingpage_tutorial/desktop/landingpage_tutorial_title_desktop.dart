import 'package:flutter/material.dart';

class LandingPageTutorialTitleDesktop extends StatelessWidget {
  const LandingPageTutorialTitleDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            children: [
              Text(
                "Zo werkt het",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 30),
              ),
              Text(
                "Nergens zo makkelijk",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontSize: 54,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
