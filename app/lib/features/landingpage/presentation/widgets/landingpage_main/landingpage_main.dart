import 'package:app/features/landingpage/presentation/widgets/main/landingpage_main_banner.dart';
import 'package:app/features/landingpage/presentation/widgets/main/landingpage_main_search.dart';
import 'package:app/features/landingpage/presentation/widgets/main/landingpage_main_title.dart';
import 'package:flutter/material.dart';

/// Contains the page title, searchbar and banner
class LandingPageMain extends StatelessWidget {
  const LandingPageMain({super.key});

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
        LandingPageMainBanner()
      ],
    );
  }
}
