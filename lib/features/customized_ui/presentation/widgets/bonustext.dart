import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';

class BonusText extends StatelessWidget {
  const BonusText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '150 reward bonus',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: SizeConfig.screenWidth * 0.046,
          ),
        ),
        Text(
          'claim upto 150 reward points after\nreaching the next transaction goal',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: SizeConfig.screenWidth * 0.032,
          ),
        ),
      ],
    );
  }
}
