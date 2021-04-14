import 'package:flutter/material.dart';

class CanvasPage extends StatefulWidget {
  CanvasPageState createState() => CanvasPageState();
}

class CanvasPageState extends State<CanvasPage> {
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: [],
      ),
    );
  }

  Widget circle(BuildContext context) {
    return CustomPaint(
      painter: circlePainter(),
    );
  }
}

class circlePainter extends CustomPainter {
  Paint _paint;
  Path _path;

  circlePainter() {
    _paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;
    _path = Path();
  }

  void paint(Canvas canvas, Size size) {}

  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
