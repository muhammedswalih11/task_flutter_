import 'package:flutter/material.dart';

class SpendRow extends StatelessWidget {
  final String name;
  final String category;
  final String amount;
  final String imagePath;
  const SpendRow({
    super.key,
    required this.name,
    required this.category,
    required this.amount,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: screenWidth * 0.037,
        ),
        SizedBox(width: screenWidth * 0.02),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.038,
              ),
            ),
            Text(category, style: TextStyle(fontSize: screenWidth * 0.034)),
          ],
        ),
        const Spacer(),
        Text(
          amount,
          style: TextStyle(
            fontSize: screenWidth * 0.038,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
