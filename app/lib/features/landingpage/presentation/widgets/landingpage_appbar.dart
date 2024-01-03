import 'package:app/features/landingpage/presentation/widgets/landingpage_drawer/landingpage_drawer.dart';
import 'package:app/main.dart';
import 'package:app/shared/constants/contants.dart';
import 'package:flutter/material.dart';

PageRouteBuilder _drawerRoute() {
  return PageRouteBuilder(
      pageBuilder: ((context, animation, secondaryAnimation) =>
          const LandingPageDrawer()),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      });
}

class LandingPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LandingPageAppBar({super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) => AppBar(
        title: Text(
          "FoodDeliveryApp.nl",
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        shadowColor: Colors.black,
        surfaceTintColor: Colors.white,
        elevation: 10,
        actions: [
          IconButton(
              onPressed: () {
                App.of(context).setLocale(const Locale("en"));
              },
              icon: const Icon(Icons.flag)),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              if (constraint.maxWidth < LARGE_SCREEN_SIZE) {
                Navigator.of(context).push(_drawerRoute());
              } else {
                Scaffold.of(context).openEndDrawer();
              }
            },
          ),
        ],
      ),
    );
  }
}
