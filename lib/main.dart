import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:taskze/clockwidget.dart';
import 'package:taskze/coffeeordered/coffeeordered.dart';
import 'package:taskze/digitalclock.dart';
import 'package:taskze/discovernewrest.dart';
import 'package:taskze/dottedroundcontainer.dart';
import 'package:taskze/ellipse63.dart';
import 'package:taskze/forkCanvas.dart';
import 'package:taskze/greetingTimewisget.dart';
import 'package:taskze/namerest.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(22, 20, 33, 100),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 10,
              child: ClockWidget(),
          ),
            Positioned(
              top: 70,
              left: 30,
              child: DigitalClock(),
            ),
            Positioned(
              top: 300,
              left: 30,
              child: GreetingTimeWidget(),
            ),
            Positioned(
              top: 220,
              left: 120,
              child: DottedRoundContainer(),
            ),
            Positioned(
              top: 420,
              left: 120,
              child: ForkCanvas(),
            ),
            const Positioned(
              top: 400,
              left: 0,
              child: CoffeeOrdered(),
            ),
            Positioned(
              top: 400,
              left: 180,
              child: DiscoverNew(),
            ),
        ],
      ),
      )
    );
  }
}

