import 'package:app/features/landingpage/presentation/widgets/landingpage_tutorial/desktop/landingpage_tutorial_carousel_desktop.dart';
import 'package:app/features/landingpage/presentation/widgets/landingpage_tutorial/mobile/landingpage_tutorial_carousel_mobile.dart';
import 'package:app/shared/constants/contants.dart';
import 'package:flutter/material.dart';

class LandingPageTutorialCarousel extends StatelessWidget {
  const LandingPageTutorialCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < LARGE_SCREEN_SIZE) {
        return const LandingPageTutorialCarouselMobile();
      } else {
        return const LandingPageTutorialCarouselDesktop();
      }
    });
  }
}
