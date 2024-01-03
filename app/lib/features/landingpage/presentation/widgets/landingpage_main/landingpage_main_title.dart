import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LandingPageMainTitle extends StatelessWidget {
  const LandingPageMainTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.landingpage_title,
              style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(height: 10),
          Text(
            AppLocalizations.of(context)!.landingpage_subtitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
