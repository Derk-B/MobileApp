import 'package:app/shared/widgets/default_drawer/default_drawer_features.dart';
import 'package:app/shared/widgets/default_drawer/default_drawer_footer.dart';
import 'package:app/shared/widgets/default_drawer/default_drawer_header.dart';
import 'package:app/shared/constants/contants.dart';
import 'package:flutter/material.dart';

class DefaultDrawer extends StatelessWidget {
  const DefaultDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Drawer(
        surfaceTintColor: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero)),
        width: constraints.maxWidth < LARGE_SCREEN_SIZE
            ? MediaQuery.of(context).size.width
            : 400,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DefaultDrawerHeader(),
            Divider(),
            DefaultDrawerFeatures(),
            Divider(),
            DefaultDrawerFooter(),
          ],
        ),
      );
    });
  }
}
