import 'dart:async';

import 'package:flutter/material.dart';

class GreetingTimeWidget extends StatefulWidget {
  @override
  _GreetingTimeWidgetState createState() => _GreetingTimeWidgetState();
}

class _GreetingTimeWidgetState extends State<GreetingTimeWidget> {
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
    String greeting = getGreeting();
    String formattedTime =
        "${greeting}\n";

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
      Text(
        formattedTime,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ]
    );
  }
    String getGreeting() {
      if (_currentTime.hour < 12) {
        return "Good \nMorning";
      } else if (_currentTime.hour < 18) {
        return "Good \nAfternoon";
      } else {
        return "Good \nEvening";
      }
    }
  }