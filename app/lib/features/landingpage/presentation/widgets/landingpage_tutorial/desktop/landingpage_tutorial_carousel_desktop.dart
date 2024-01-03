import 'package:flutter/material.dart';

import '../landingpage_tutorial_carousel_items.dart';

class LandingPageTutorialCarouselDesktop extends StatelessWidget {
  const LandingPageTutorialCarouselDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 64.0),
      child: Container(
        width: 1500,
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: tutorialWidgetsList(context)
              .map((widget) => Column(
                    children: [
                      Icon(
                        widget.iconData,
                        size: 80,
                        color: Theme.of(context).primaryColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          widget.title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        constraints: const BoxConstraints(maxWidth: 300),
                        child: Text(
                          widget.description,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ))
              .toList(),
        ),
      ),
    );
  }
}
