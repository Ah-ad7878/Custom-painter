import 'package:flutter/material.dart';

class Barbados extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //initilize the height and width
    final Size(:width, :height) = size;

    final stripleWidth = width / 3;

    //create rect
    final left = Rect.fromLTWH(0, 0, stripleWidth, height);
    final middle = Rect.fromLTWH(stripleWidth, 0, stripleWidth, height);
    final last = Rect.fromLTWH(stripleWidth * 2, 0, stripleWidth, height);

    //create paints
    Paint leftpaint = Paint()..color = Color(0xFF00267F);
    Paint middlepaint = Paint()..color = Color(0xFFFFC72C);

    //create flag
    canvas.drawRect(left, leftpaint);
    canvas.drawRect(middle, middlepaint);
    canvas.drawRect(last, leftpaint);
  }

  @override
  bool shouldRepaint(Barbados oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(Barbados oldDelegate) => false;
}
