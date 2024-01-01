import 'package:app/features/landingpage/presentation/widgets/landingpage_appbar.dart';
import 'package:app/features/landingpage/presentation/widgets/landingpage_drawer/landingpage_drawer.dart';
import 'package:app/features/landingpage/presentation/widgets/landingpage_footer/landingpage_footer.dart';
import 'package:app/features/landingpage/presentation/widgets/main/landingpage_main.dart';
import 'package:app/features/landingpage/presentation/widgets/tutorial/landingpage_tutorial.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LandingPageAppBar().build(context),
      endDrawer: const LandingPageDrawer(),
      body: const SingleChildScrollView(
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
