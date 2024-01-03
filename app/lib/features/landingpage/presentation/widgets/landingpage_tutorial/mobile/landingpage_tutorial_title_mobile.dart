import 'package:app/shared/localizations_ext.dart';
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
                AppLocalizations.of(context)!.landingpage_tutorial_title_intro,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                AppLocalizations.of(context)!
                    .landingpage_tutorial_title_eyecatcher,
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
