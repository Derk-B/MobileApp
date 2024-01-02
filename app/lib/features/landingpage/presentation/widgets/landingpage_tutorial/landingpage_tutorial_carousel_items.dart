import 'package:flutter/material.dart';

class TutorialWidget {
  final String title;
  final String description;
  final IconData iconData;

  const TutorialWidget(this.title, this.description, this.iconData);
}

const List<TutorialWidget> tutorialWidgetsList = [
  TutorialWidget(
      "Geef je huidige locatie",
      "Wij zoeken de dichtsbijzijnde restaurants en winkels voor je op",
      Icons.location_on),
  TutorialWidget("Vind wat je zoekt",
      "Zoek naar producten of gerechten, bedrijven of keukens", Icons.fastfood),
  TutorialWidget(
      "Bestelling voor bezorging of afhalen",
      "We houden je op de hoogte van de voortgang van je bestelling",
      Icons.notifications_active),
];
