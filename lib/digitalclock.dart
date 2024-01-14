import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DigitalClock extends StatefulWidget {
  @override
  _DigitalClockState createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  DateTime _currentTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    // Update the time every second
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          _currentTime = DateTime.now();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate =
    DateFormat('dd MMMM').format(_currentTime);

    // Convert hex colors to Color objects
    Color blueColor = HexColor("#F1B96B");
    Color greenColor = HexColor("#A716BE");

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShaderMask(
          shaderCallback: (Rect bounds) {
            return LinearGradient(colors: [blueColor, greenColor]).createShader(
                bounds);
          },
          child: Text(
            _currentTime.hour.toString().padLeft(2, '0'),
            style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          ),
        ),
        Text(
          _currentTime.minute.toString().padLeft(2, '0'),
          style: const TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Colors.white12,
          ),
        ),
        Text(
          formattedDate,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white12
          ),
        ),
      ],
    );
  }
}

// Helper class to convert hex color to Color object
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}