import 'package:app/shared/widgets/default_drawer/default_drawer.dart';
import 'package:app/shared/constants/contants.dart';
import 'package:flutter/material.dart';

class DefaultDrawerButton extends StatelessWidget {
  final BoxConstraints constraints;
  const DefaultDrawerButton(this.constraints, {super.key});

  PageRouteBuilder _drawerRoute() {
    return PageRouteBuilder(
        pageBuilder: ((context, animation, secondaryAnimation) =>
            const DefaultDrawer()),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return child;
        });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.menu),
      onPressed: () {
        if (constraints.maxWidth < LARGE_SCREEN_SIZE) {
          Navigator.of(context).push(_drawerRoute());
        } else {
          Scaffold.of(context).openEndDrawer();
        }
      },
    );
  }
}
