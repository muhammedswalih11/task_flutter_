import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';

class ProgressBar extends StatelessWidget {
  ProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Row(
      children: [
        Expanded(
          child: Container(
            height: screenHeight * 0.013,
            decoration: BoxDecoration(
              color: DefaultColors.blue_100,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: FractionallySizedBox(
                alignment: AlignmentGeometry.centerLeft,
                widthFactor: 0.75,
                child: Container(
                  decoration: BoxDecoration(
                    color: DefaultColors.blue_200,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 4.04),
        Text(
          'QAR 240 away',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        ),
      ],
    );
  }
}
