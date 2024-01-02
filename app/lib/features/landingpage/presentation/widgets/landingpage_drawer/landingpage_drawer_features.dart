import 'package:app/features/landingpage/presentation/widgets/landingpage_drawer/landingpage_drawer_iconbutton.dart';
import 'package:flutter/material.dart';

class LandingPageDrawerFeatures extends StatelessWidget {
  const LandingPageDrawerFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LandingPageDrawerIconButton(
            icon: Icon(Icons.redeem_outlined),
            label: "Cadeaukaarten",
          ),
          LandingPageDrawerIconButton(
            icon: Icon(Icons.help_outline),
            label: "Hulp nodig?",
          ),
        ],
      ),
    );
  }
}
