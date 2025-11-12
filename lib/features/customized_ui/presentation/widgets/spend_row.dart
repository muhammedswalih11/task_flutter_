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
        CircleAvatar(backgroundImage: AssetImage(imagePath), radius: 14),
        SizedBox(width: screenWidth * 0.02),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            Text(category, style: TextStyle(fontSize: 12)),
          ],
        ),
        const Spacer(),
        Text(
          amount,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
