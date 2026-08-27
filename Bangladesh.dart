import 'package:flutter/material.dart';

class Bangladesh extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //initialze height and width
    final Size(:width, :height) = size;

    //calculate center
    final center = Offset(width / 2, height / 2);
    //calculate radius
    final radius = height * 0.20;
    //find reactfor Box
    final react = Rect.fromLTWH(0, 0, width, height);

    //create paints
    final boxPaint = Paint()..color = Color(0xFF006A4E);
    final circlePaint = Paint()..color = const Color(0xFFF42A41);

    //draw a box of green color
    canvas.drawRect(react, boxPaint);

    //draw a circle inside a box
    canvas.drawCircle(center, radius, circlePaint);
  }

  @override
  bool shouldRepaint(Bangladesh oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(Bangladesh oldDelegate) => false;
}
