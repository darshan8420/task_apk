
import 'package:flutter/material.dart';

class CoffeeCup extends StatelessWidget {
  const CoffeeCup({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Positioned(
      top: 0,
      left: 0,
      child: Image.asset(
        'assets/images/coffee_cup.png', // Replace with the actual path to your image
        width: 150.0, // Adjust width as needed
        height: 150.0, // Adjust height as needed
        fit: BoxFit.cover, // Adjust the BoxFit as needed
      ),
    ),
    ]
    );
  }

}