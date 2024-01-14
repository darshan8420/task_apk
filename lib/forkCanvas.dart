import 'package:flutter/material.dart';

class ForkCanvas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300.0,
        height: 200.0,
        child: CustomPaint(
        painter: ForkPainter(),
        ),
      );
  }
}
class ForkPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;

    final path = Path();

    // Draw fork handle
    path.moveTo(size.width / 2, size.height / 5);
    path.lineTo(size.width / 2, size.height * 4 / 5);

    // Draw fork prongs
    path.moveTo(size.width / 2, size.height / 5);
    path.lineTo(size.width * 4 / 5, size.height / 5);

    path.moveTo(size.width / 2, size.height / 5);
    path.lineTo(size.width * 2 / 5, size.height / 5);

    path.moveTo(size.width / 2, size.height * 4 / 5);
    path.lineTo(size.width * 4 / 5, size.height * 4 / 5);

    path.moveTo(size.width / 2, size.height * 4 / 5);
    path.lineTo(size.width * 2 / 5, size.height * 4 / 5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}