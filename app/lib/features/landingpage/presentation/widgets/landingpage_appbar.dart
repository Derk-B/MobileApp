import 'package:app/features/landingpage/presentation/widgets/landingpage_drawer/landingpage_drawer.dart';
import 'package:flutter/material.dart';

PageRouteBuilder _drawerRoute() {
  return PageRouteBuilder(
      pageBuilder: ((context, animation, secondaryAnimation) =>
          const LandingPageDrawer()),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      });
}

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
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Navigator.of(context).push(_drawerRoute());
          },
        ),
      ],
    );
  }
}
