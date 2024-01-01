import 'package:flutter/material.dart';

class DefaultAppBar extends AppBar {
  DefaultAppBar({super.key, super.title})
      : super(
          shadowColor: Colors.black,
          surfaceTintColor: Colors.white,
          elevation: 10,
          actions: [
            Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
          ],
        );
}
