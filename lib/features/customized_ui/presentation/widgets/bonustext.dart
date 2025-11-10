import 'package:flutter/material.dart';

class BonusText extends StatelessWidget {
  const BonusText({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '150 reward bonus',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.046,
          ),
        ),
        Text(
          'Claim upto 150 reward points after\nreaching the next transaction goal',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.032,
          ),
        ),
      ],
    );
  }
}
