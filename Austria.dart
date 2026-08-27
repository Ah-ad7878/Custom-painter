import 'package:flutter/material.dart';

class Austria extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //initilize height and width
    final Size(:width, :height) = size;

    //stripeHeigth mean screen kii ketni part per ak box aia
    final stripeHeight = height / 3;

    //create box rect
    final top = Rect.fromLTWH(0, 0, width, stripeHeight);
    final middle = Rect.fromLTWH(0, stripeHeight, width, stripeHeight);
    final last = Rect.fromLTWH(0, stripeHeight * 2, width, stripeHeight);

    //create paints
    Paint firstPaint = Paint()..color = Color(0xFFC8102E);
    Paint middleBox = Paint()..color = Colors.white;

    //create flag
    canvas.drawRect(top, firstPaint);
    canvas.drawRect(middle, middleBox);
    canvas.drawRect(last, firstPaint);
  }

  @override
  bool shouldRepaint(Austria oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(Austria oldDelegate) => false;
}
