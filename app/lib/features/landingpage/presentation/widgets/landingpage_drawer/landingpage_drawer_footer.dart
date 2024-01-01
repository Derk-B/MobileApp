import 'package:app/features/landingpage/presentation/widgets/landingpage_drawer/landingpage_drawer_iconbutton.dart';
import 'package:flutter/material.dart';

class LandingPageDrawerFooter extends StatelessWidget {
  const LandingPageDrawerFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Made by: Derk Blom"),
          LandingPageDrawerIconButton(
            icon: Icon(Icons.link),
            label: "Linkeding",
          ),
          LandingPageDrawerIconButton(
            icon: Icon(Icons.link),
            label: "Github",
          ),
        ],
      ),
    );
  }
}
