import 'package:flutter/material.dart';

class Belgium extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //initialize the height and width
    final Size(:width, :height) = size;

    //create Striplewidth
    final stripleWidth = width / 3;

    //create rect
    final left = Rect.fromLTWH(0, 0, stripleWidth, height);
    final middle = Rect.fromLTWH(stripleWidth, 0, stripleWidth, height);
    final lastBox = Rect.fromLTWH(stripleWidth * 2, 0, stripleWidth, height);

    //create paint
    Paint leftPaint = Paint()..color = Colors.black;
    Paint middlePaint = Paint()..color = Colors.yellow;
    Paint Lastpaint = Paint()..color = Colors.red;

    //draw flag
    canvas.drawRect(left, leftPaint);
    canvas.drawRect(middle, middlePaint);
    canvas.drawRect(lastBox, Lastpaint);
  }

  @override
  bool shouldRepaint(Belgium oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(Belgium oldDelegate) => false;
}
