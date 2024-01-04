import 'package:app/shared/widgets/default_drawer/default_drawer_iconbutton.dart';
import 'package:flutter/material.dart';

class DefaultDrawerFooter extends StatelessWidget {
  const DefaultDrawerFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Made by: Derk Blom"),
          DefaultDrawerIconButton(
            icon: Icon(Icons.link),
            label: "Linkeding",
          ),
          DefaultDrawerIconButton(
            icon: Icon(Icons.link),
            label: "Github",
          ),
        ],
      ),
    );
  }
}
