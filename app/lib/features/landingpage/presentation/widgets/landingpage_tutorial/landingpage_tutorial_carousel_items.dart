import 'package:app/shared/localizations_ext.dart';
import 'package:flutter/material.dart';

class TutorialWidget {
  final String title;
  final String description;
  final IconData iconData;

  const TutorialWidget(this.title, this.description, this.iconData);
}

List<TutorialWidget> tutorialWidgetsList(context) => [
      TutorialWidget(
          AppLocalizations.of(context)!.landingpage_tutorial_widget_title_0,
          AppLocalizations.of(context)!
              .landingpage_tutorial_widget_description_0,
          Icons.location_on),
      TutorialWidget(
          AppLocalizations.of(context)!.landingpage_tutorial_widget_title_1,
          AppLocalizations.of(context)!
              .landingpage_tutorial_widget_description_1,
          Icons.fastfood),
      TutorialWidget(
          AppLocalizations.of(context)!.landingpage_tutorial_widget_title_2,
          AppLocalizations.of(context)!
              .landingpage_tutorial_widget_description_2,
          Icons.notifications_active),
    ];
