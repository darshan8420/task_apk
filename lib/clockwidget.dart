import 'package:flutter/material.dart';
import 'dart:math';

class ClockWidget extends StatefulWidget {
  @override
  _ClockWidgetState createState() => _ClockWidgetState();
}

class _ClockWidgetState extends State<ClockWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 240.0,
      child: CustomPaint(
        painter: ClockPainter(),
      ),
    );
  }
}

class ClockPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = size.width / 2;

    // Draw clock circle
    final clockPaint = Paint()
      ..color = const Color.fromRGBO(22, 20, 33, 100)
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(center, radius, clockPaint);

    // Draw clock hands
    drawCircleWithBoundaryCircles(canvas, center, radius, 0xFF6B6D69);

    // Draw clock hands
    drawHand2(canvas, center, radius * 0.8, 40, 0xFF6B6D69); // Minute hand
    drawHand1(canvas, center, radius * 0.6, 270, 0xFF6B6D69); // Hour hand

    // Draw a circle in the middle
    drawCenterCircle(canvas, center, 10.0, 3.0, Colors.black, Colors.grey); // Adjust the radius and color as needed
  }

  void drawCenterCircle(Canvas canvas, Offset center, double radius, double strokeWidth, Color fillColor, Color strokeColor) {
    final fillPaint = Paint()
      ..color = fillColor
      ..style = PaintingStyle.fill;

    final strokePaint = Paint()
      ..color = strokeColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.2;

    canvas.drawCircle(center, radius, fillPaint);
    canvas.drawCircle(center, radius - strokeWidth / 1.5, strokePaint);
  }

  void drawHand1(Canvas canvas, Offset center, double length, double angle, int hexColor) {
    final color = Color(hexColor);

    final paint = Paint()
      ..color = color
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.miter
      ..blendMode = BlendMode.srcOver;

    final radians = angle * (pi / 180);

    final startX = center.dx + cos(radians) * 8.0; // Start slightly inside the circle
    final startY = center.dy + sin(radians) * 8.0; // Start slightly inside the circle

    final endX = center.dx + cos(radians) * length;
    final endY = center.dy + sin(radians) * length;


    canvas.drawLine(Offset(startX, startY), Offset(endX, endY), paint);
  }

  void drawHand2(Canvas canvas, Offset center, double length, double angle, int hexColor) {
    final color = Color(hexColor);
    final gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        color.withOpacity(1.0),  // Full opacity at the top
        color.withOpacity(0.0),  // Full transparency at the bottom
      ],
    );

    final paint = Paint()
      ..shader = gradient.createShader(Rect.fromPoints(center, Offset(center.dx, center.dy + length)))
      ..color = color
      ..strokeWidth = 1.0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.miter
      ..blendMode = BlendMode.srcOver;

    final radians = angle * (pi / 180);

    final startX = center.dx + cos(radians) * 8.0; // Start slightly inside the circle
    final startY = center.dy + sin(radians) * 8.0; // Start slightly inside the circle

    final endX = center.dx + cos(radians) * length;
    final endY = center.dy + sin(radians) * length;


    canvas.drawLine(Offset(startX, startY), Offset(endX, endY), paint);
  }


  void drawCircleWithBoundaryCircles(Canvas canvas, Offset center, double radius, int hexColor) {
    final color = Color(hexColor);

    final circlePaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;


    // Draw smaller circles on the boundary
    final numCircles = 8;
    for (int i = 0; i < numCircles; i++) {
      final angle = (i * 360 / numCircles) * (pi / 180);
      final circleX = center.dx + cos(angle) * radius;
      final circleY = center.dy + sin(angle) * radius;
      canvas.drawCircle(Offset(circleX, circleY), 1.0, circlePaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
