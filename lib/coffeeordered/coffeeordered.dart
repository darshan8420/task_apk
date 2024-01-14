
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeeOrdered extends StatelessWidget {
  const CoffeeOrdered({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      color: Colors.transparent,
      child: Stack(
        children: [
          Container(
            width: 276,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: const Color(0xff2d2430),
            ),
            child: const Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 20.0),
                  child: Text(
                    'Your coffee has \nbeen ordered',
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
            ),
              Positioned(
                top: 70,
                left: -40,
                child: Image.asset(
                  'assets/images/coffee.png',
                  width: 170.0,
                  height: 170.0,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 120.0, // Adjust the top position for the second image
                left: 160.0, // Adjust the left position for the second image
                child: Image.asset(
                  'assets/icons/verified.png',
                  width: 50.0,
                  height: 50.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )
    );
  }
}