import 'package:flutter/material.dart';

class LandingPageTutorialTitleMobile extends StatelessWidget {
  const LandingPageTutorialTitleMobile({super.key});

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
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "Makkelijker kan haast niet.",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: Theme.of(context).primaryColor),
              ),
              const SizedBox(height: 32.0),
            ],
          ),
        ),
      ],
    );
  }
}
