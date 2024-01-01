import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TutorialWidget {
  final String title;
  final String description;
  final IconData iconData;

  const TutorialWidget(this.title, this.description, this.iconData);
}

const List<TutorialWidget> tutorialWidgetsList = [
  TutorialWidget(
      "Vertel ons waar je je bevindt",
      "Wij laten je zien bij welke winkels en restaurants in de buurt je kan bestellen",
      Icons.location_on),
  TutorialWidget("Vind wat je zoekt",
      "Zoek naar producten of gerechten, bedrijven of keukens", Icons.fastfood),
  TutorialWidget(
      "Bestelling voor bezorging of afhalen",
      "We houden je op de hoogte van de voortgang van je bestelling",
      Icons.notifications_active),
];

class LandingPageTutorialCarousel extends StatefulWidget {
  const LandingPageTutorialCarousel({super.key});

  @override
  State<LandingPageTutorialCarousel> createState() =>
      _LandingPageTutorialCarouselState();
}

class _LandingPageTutorialCarouselState
    extends State<LandingPageTutorialCarousel> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 240,
            enableInfiniteScroll: false,
            onPageChanged: (index, _) => setState(() => _current = index),
          ),
          items: tutorialWidgetsList.map((widget) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.62,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Column(
                    children: [
                      Icon(
                        widget.iconData,
                        size: 60,
                        color: Theme.of(context).primaryColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          widget.title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        widget.description,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: tutorialWidgetsList.asMap().entries.map((entry) {
            return Container(
              width: 12.0,
              height: 12.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (_current == entry.key
                      ? Theme.of(context).primaryColor
                      : Colors.grey)),
            );
          }).toList(),
        ),
        const SizedBox(height: 32.0),
      ],
    );
  }
}
