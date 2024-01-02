import 'package:app/features/landingpage/presentation/widgets/landingpage_main/desktop/landingpage_main_desktop_banner.dart';
import 'package:app/features/landingpage/presentation/widgets/landingpage_main/landingpage_main_search.dart';
import 'package:app/features/landingpage/presentation/widgets/landingpage_main/landingpage_main_title.dart';
import 'package:flutter/material.dart';

class LandingPageMainDesktopLayout extends StatelessWidget {
  const LandingPageMainDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LandingPageMainTitle(),
                Container(
                  constraints: const BoxConstraints(maxWidth: 600),
                  child: const LandingPageMainSearch(),
                ),
              ],
            ),
          ),
        ),
        const Flexible(
          flex: 1,
          child: LandingPageMainDesktopBanner(),
        ),
      ],
    );
  }
}
