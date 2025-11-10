import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';

class PointsEarnCard extends StatelessWidget {
  const PointsEarnCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        // color: const Color.fromARGB(255, 246, 251, 252),
        // color: Colors.black,
        color: DefaultColors.white_200,
        borderRadius: BorderRadius.circular(screenWidth * 0.05),
        border: Border.all(color: Colors.grey.shade400, width: 0.6),
      ),
      padding: EdgeInsets.all(screenWidth * 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/icons/chest.png',
            width: screenWidth * 0.05,
            height: screenHeight * 0.025,
            color: DefaultColors.black,
          ),

          Text(
            '1285 Reward Points earned',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: screenWidth * 0.036,
            ),
          ),

          Transform.rotate(
            angle: 0.5,
            child: Icon(Icons.arrow_upward, size: screenWidth * 0.05),
          ),
        ],
      ),
    );
  }
}
