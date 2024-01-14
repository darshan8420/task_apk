import 'package:flutter/material.dart';
import 'dart:math';

class Ellipse63 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromCenter(
      center: size.center(Offset.zero),
      width: 514,
      height: 514,
    );

    const startAngle = 0.0;
    const sweepAngle = -pi / 4; // -25% of the circle

    final paint = Paint()
      ..color = const Color(0x9E929292) // Set your desired color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;

    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}