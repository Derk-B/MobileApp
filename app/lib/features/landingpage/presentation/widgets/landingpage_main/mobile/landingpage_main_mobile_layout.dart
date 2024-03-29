import 'package:app/features/landingpage/presentation/widgets/landingpage_main/mobile/landingpage_main_mobile_banner.dart';
import 'package:app/features/landingpage/presentation/widgets/landingpage_main/landingpage_main_search.dart';
import 'package:app/features/landingpage/presentation/widgets/landingpage_main/landingpage_main_title.dart';
import 'package:flutter/material.dart';

class LandingPageMainMobileLayout extends StatelessWidget {
  const LandingPageMainMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LandingPageMainTitle(),
              LandingPageMainSearch(),
            ],
          ),
        ),
        LandingPageMainMobileBanner()
      ],
    );
  }
}
