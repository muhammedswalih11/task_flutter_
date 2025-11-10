import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';

class RechargeCard extends StatelessWidget {
  final Map<String, String> model;

  const RechargeCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      child: Padding(
        padding: EdgeInsets.only(
          left: screenWidth * 0.05,
          // right: SizeConfig.screenWidth * 0.0,
        ),
        child: Container(
          width: screenWidth * 0.8,
          margin: EdgeInsets.only(right: screenWidth * 0.05),
          padding: EdgeInsets.all(screenWidth * 0.028),
          decoration: BoxDecoration(
            // color: Colors.black,
            color: DefaultColors.white,
            borderRadius: BorderRadius.circular(screenWidth * 0.04),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: screenWidth * 0.025,
                        backgroundImage: AssetImage(model['imagePath']!),
                      ),
                      SizedBox(width: screenHeight * 0.012),
                      Text(
                        model['title']!,
                        style: TextStyle(fontSize: screenWidth * 0.035),
                      ),
                    ],
                  ),
                  Text(
                    model['type']!,
                    style: TextStyle(fontSize: screenWidth * 0.035),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.025),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    model['amount']!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.045,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                        screenWidth * 0.12,
                        screenHeight * 0.03,
                      ),
                      backgroundColor: Theme.of(
                        context,
                      ).colorScheme.surfaceContainerLowest,
                      side: BorderSide(color: DefaultColors.blue4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.05),
                      ),
                      // padding: EdgeInsets.symmetric(
                      //   horizontal: SizeConfig.screenWidth * 0.03,
                      //   vertical: SizeConfig.screenWidth * 0.02,
                      // ),
                    ),
                    child: Text(
                      'Recharge',
                      style: TextStyle(
                        color: DefaultColors.blue4,
                        fontSize: screenWidth * 0.035,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
