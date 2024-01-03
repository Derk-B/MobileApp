import 'package:app/shared/localizations_ext.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageFooter extends StatelessWidget {
  const LandingPageFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).colorScheme.secondary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${AppLocalizations.of(context)!.landingpage_footer_made_by} Derk Blom",
          ),
          const SizedBox(height: 8.0),
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(5)),
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Github",
                style:
                    TextStyle(color: Theme.of(context).colorScheme.onPrimary),
              ),
            ),
            onTap: () => launchUrl(Uri.parse("https://github.com/derk-b/")),
          ),
        ],
      ),
    );
  }
}
