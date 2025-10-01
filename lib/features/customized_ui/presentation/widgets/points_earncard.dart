import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';

class PointsEarnCard extends StatelessWidget {
  const PointsEarnCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 246, 251, 252),
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.05),
      ),
      padding: EdgeInsets.all(SizeConfig.screenWidth * 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/icons/chest.png',
            width: SizeConfig.screenWidth * 0.05,
            height: SizeConfig.screenHeight * 0.025,
            color: Colors.blue,
          ),

          Text(
            '1285 Reward Points earned',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: SizeConfig.screenWidth * 0.036,
            ),
          ),

          Transform.rotate(
            angle: 0.5,
            child: Icon(
              Icons.arrow_upward,
              color: Colors.blue,
              size: SizeConfig.screenWidth * 0.05,
            ),
          ),
        ],
      ),
    );
  }
}
