
import 'package:flutter/material.dart';

class DiscoverNew extends StatelessWidget {
  const DiscoverNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 218,
        height: 362,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: const Color(0xff1D1B25),
        ),
        child: Stack(
          children: [
          Positioned(
          top: 20,
          left: 20,
          child: Image.asset(
            'assets/icons/spoon.png',
            width: 40.0,
            height: 40.0,
          ),
        ),
            const Positioned(
              top: 20,
              left: 70,
              child: Text(
                    'Discover',
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Color(0xffffffff),
                      height: 22/18,
                    ),
                  ),
            ),
            const Positioned(
              top: 40,
              left: 70,
              child: Text(
                'a new restaurant',
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffffffff),
                  height: 19/16,
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 20,
              child: Image.asset(
                'assets/images/Food.png',
                width: 171,
                height: 262,
              ),
            ),
            Positioned(
              top: 200,
              left: -250,
              child: Container(
                width: 514,
                height: 514,
                decoration: ShapeDecoration(
                  color: Color(0x9E929292),
                  shape: OvalBorder(),
                ),
              )
            ),
            Positioned(
                top: 260,
                left: 20,
                child: Text(
                  'Fukuno',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0.05,
                  ),
                  textAlign: TextAlign.center,
                ),
            ),
            Positioned(
              top: 285,
              left: 20,
              child: Text(
                'Restaurant',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0.05,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 320,
              left: 20,
              child: Text(
                '15915 S Western Ave',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w300,
                  height: 0.20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Positioned(
              top: 340,
              left: 20,
              child: Text(
                'Gardena, CA 90247',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w300,
                  height: 0.20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
              ],
            ),
    );
  }
}