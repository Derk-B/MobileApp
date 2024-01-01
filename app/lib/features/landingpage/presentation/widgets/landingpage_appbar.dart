import 'package:flutter/material.dart';

class LandingPageAppBar extends StatelessWidget {
  const LandingPageAppBar({super.key});

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      title: Text(
        "NietThuisbezorgd.nl",
        style: TextStyle(color: Theme.of(context).primaryColor),
      ),
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
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ],
    );
  }
}
