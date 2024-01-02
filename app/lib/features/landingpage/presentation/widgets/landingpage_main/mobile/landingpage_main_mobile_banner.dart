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

class LandingPageMainMobileBanner extends StatelessWidget {
  const LandingPageMainMobileBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            child: Image.asset("lib/assets/images/banner.png"),
          ),
        ),
      ],
    );
  }
}
