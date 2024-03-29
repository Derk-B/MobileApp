import 'package:app/features/landingpage/presentation/widgets/landingpage_appbar.dart';
import 'package:app/shared/widgets/default_drawer/default_drawer.dart';
import 'package:app/features/landingpage/presentation/widgets/landingpage_footer/landingpage_footer.dart';
import 'package:app/features/landingpage/presentation/widgets/landingpage_main/landingpage_main.dart';
import 'package:app/features/landingpage/presentation/widgets/landingpage_tutorial/landingpage_tutorial.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: LandingPageAppBar(),
      endDrawer: DefaultDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            LandingPageMain(),
            SizedBox(height: 32.0),
            LandingPageTutorial(),
            LandingPageFooter(),
          ],
        ),
      ),
    );
  }
}
