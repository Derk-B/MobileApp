import 'package:app/features/landingpage/presentation/widgets/landingpage_tutorial/desktop/landingpage_tutorial_title_desktop.dart';
import 'package:app/features/landingpage/presentation/widgets/landingpage_tutorial/mobile/landingpage_tutorial_title_mobile.dart';
import 'package:app/shared/constants/contants.dart';
import 'package:flutter/material.dart';

class LandingPageTutorialTitle extends StatelessWidget {
  const LandingPageTutorialTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < LARGE_SCREEN_SIZE) {
        return const LandingPageTutorialTitleMobile();
      } else {
        return const LandingPageTutorialTitleDesktop();
      }
    });
  }
}
