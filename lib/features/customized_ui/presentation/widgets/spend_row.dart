import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';

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
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: SizeConfig.screenWidth * 0.037,
        ),
        SizedBox(width: SizeConfig.screenWidth * 0.02),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: SizeConfig.screenWidth * 0.038,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            Text(
              category,
              style: TextStyle(
                fontSize: SizeConfig.screenWidth * 0.034,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ],
        ),
        const Spacer(),
        Text(
          amount,
          style: TextStyle(
            fontSize: SizeConfig.screenWidth * 0.038,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ],
    );
  }
}
