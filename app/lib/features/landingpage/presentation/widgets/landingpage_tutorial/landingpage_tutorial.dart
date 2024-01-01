import 'package:app/features/landingpage/presentation/widgets/landingpage_tutorial/landingpage_tutorial_carousel.dart';
import 'package:app/features/landingpage/presentation/widgets/landingpage_tutorial/landingpage_tutorial_title.dart';
import 'package:flutter/material.dart';

class LandingPageTutorial extends StatelessWidget {
  const LandingPageTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LandingPageTutorialTitle(),
        LandingPageTutorialCarousel(),
      ],
    );
  }
}
