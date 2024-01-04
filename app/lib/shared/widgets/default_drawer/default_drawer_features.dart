import 'package:app/shared/widgets/default_drawer/default_drawer_iconbutton.dart';
import 'package:flutter/material.dart';

class DefaultDrawerFeatures extends StatelessWidget {
  const DefaultDrawerFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultDrawerIconButton(
            icon: Icon(Icons.redeem_outlined),
            label: "Cadeaukaarten",
          ),
          DefaultDrawerIconButton(
            icon: Icon(Icons.help_outline),
            label: "Hulp nodig?",
          ),
        ],
      ),
    );
  }
}
