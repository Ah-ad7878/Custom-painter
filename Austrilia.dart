import 'package:flutter/material.dart';

class Austrilia extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Size(:width, :height) = size;

    final thikness = width * 0.10;
    final boxOffset = Rect.fromLTWH(0, 0, width, height);

    final horizontal = (height / 2) - (thikness / 2);
    final vertical = (width / 2) - (thikness / 2);

    final verticalBar = Rect.fromLTWH(vertical, 0, thikness, height);
    final horizontalBar = Rect.fromLTWH(0, horizontal, width, thikness);

    //white paint
    Paint whitePaint = Paint()..color = Colors.white;
    Paint redPaint = Paint()..color = Colors.red;

    //draw Flag
    canvas.drawRect(boxOffset, whitePaint);
    canvas.drawRect(verticalBar, redPaint);
    canvas.drawRect(horizontalBar, redPaint);
  }

  @override
  bool shouldRepaint(Austrilia oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(Austrilia oldDelegate) => false;
}
