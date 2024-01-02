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
      ..lineTo(x + 1, 0)
      ..lineTo(x + 1, y)
      ..lineTo(0, y);
  }

  @override
  bool shouldRepaint(TriangleShape oldDelegate) {
    return oldDelegate.fillColor != fillColor ||
        oldDelegate.paintingStyle != paintingStyle ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}

class LandingPageMainDesktopBanner extends StatelessWidget {
  const LandingPageMainDesktopBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.4,
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: CustomPaint(
                painter:
                    TriangleShape(fillColor: Theme.of(context).primaryColor),
                child: SizedBox(
                  width: 100,
                  height: MediaQuery.of(context).size.height,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.4,
            color: Theme.of(context).primaryColor,
            child: Container(
              alignment: Alignment.center,
              width: 800,
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.35),
              child: Image.asset(
                "lib/assets/images/banner.png",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
