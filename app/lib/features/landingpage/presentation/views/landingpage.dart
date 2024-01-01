import 'package:app/shared/widgets/default_app_bar.dart';
import 'package:flutter/material.dart';

class TriangleShape extends CustomPainter {
  final Color fillColor;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  TriangleShape(
      {this.fillColor = Colors.orange,
      this.strokeWidth = 3,
      this.paintingStyle = PaintingStyle.fill});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = fillColor
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;

    canvas.drawPath(getTrianglePath(size.width, size.height), paint);
  }

  Path getTrianglePath(double x, double y) {
    return Path()
      ..moveTo(0, y)
      ..lineTo(x, 0)
      ..lineTo(x, y)
      ..lineTo(0, y);
  }

  @override
  bool shouldRepaint(TriangleShape oldDelegate) {
    return oldDelegate.fillColor != fillColor ||
        oldDelegate.paintingStyle != paintingStyle ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "NietThuisbezorgd.nl",
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 32.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Bestel eten en meer",
                      style: Theme.of(context).textTheme.headlineLarge),
                  const SizedBox(height: 10),
                  Text(
                    "Restaurants en boodschappen in de buurt",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 10),
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 60,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Adres, b.v. Amstelplein 10",
                              suffixIcon: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4.0, horizontal: 4.0),
                                child: TextButton(
                                  child: Text(
                                    "    Zoek    ",
                                    style: TextStyle(
                                      height: 2.4,
                                      fontSize: 20,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  borderSide:
                                      const BorderSide(color: Colors.black)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CustomPaint(
              painter: TriangleShape(fillColor: Theme.of(context).primaryColor),
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              alignment: Alignment.center,
              color: Theme.of(context).primaryColor,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Image.network(
                    "https://www.thuisbezorgd.nl/consumer-web/images/falafel_salad_home_dss_desktop_nl.1a0c2a35.png"),
              ),
            ),
            const SizedBox(height: 32.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  Text(
                    "Zo werkt het",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    "Makkelijker kan haast niet.",
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(color: Theme.of(context).primaryColor),
                  ),
                  const SizedBox(height: 32.0),
                  Icon(
                    Icons.location_pin,
                    color: Theme.of(context).primaryColor,
                    size: 60,
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    "Vertel ons waar je je bevindt",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                      "Wij laten je zien bij welke winkels en restaurants in de buurt je kan bestellen",
                      textAlign: TextAlign.center),
                ],
              ),
            ),
            const SizedBox(height: 32.0),
          ],
        ),
      ),
    );
  }
}
