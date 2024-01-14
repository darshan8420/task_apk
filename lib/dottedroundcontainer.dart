import 'dart:math';

import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class DottedRoundContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300.0,
        height: 200.0,
        child: CustomPaint(
        painter: RoundedRectanglePainter(),
        ),
      );
  }
}

class RoundedRectanglePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
        ..color = Colors.white
        ..strokeWidth = 1
        ..style = PaintingStyle.stroke;

    final a = Offset(size.width * 1/6, size.height * 1/4);
    final b = Offset(size.width * 5/6, size.height * 3/4);
    final rect = Rect.fromPoints(a, b);
    final radius = const Radius.circular(24);

    final path = Path()
      ..addRRect(RRect.fromRectAndRadius(rect, radius));

    final dashedPath = dashPath(
      path,
      dashArray: CircularIntervalList<double>(<double>[5, 5]), // Adjust the dash array
    );

    canvas.drawPath(dashedPath, paint);
  }


  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

