import 'package:flutter/material.dart';

class LandingPageDrawerIconButton extends StatelessWidget {
  final Icon icon;
  final String label;
  const LandingPageDrawerIconButton(
      {super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
          padding: const EdgeInsets.all(16.0),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black87),
      onPressed: () {},
      icon: icon,
      label: Text(label),
    );
  }
}
