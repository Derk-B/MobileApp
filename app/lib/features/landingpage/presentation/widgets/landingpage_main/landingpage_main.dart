import 'package:app/features/landingpage/presentation/widgets/landingpage_main/desktop/landingpage_main_desktop_layout.dart';
import 'package:app/features/landingpage/presentation/widgets/landingpage_main/mobile/landingpage_main_mobile_layout.dart';
import 'package:flutter/material.dart';

/// Contains the page title, searchbar and banner
class LandingPageMain extends StatelessWidget {
  const LandingPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 1024) {
        return const LandingPageMainMobileLayout();
      } else {
        return const LandingPageMainDesktopLayout();
      }
    });
  }
}
