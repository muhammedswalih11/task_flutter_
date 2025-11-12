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
          left: 16,
          // right: SizeConfig.screenWidth * 0.0,
        ),
        child: Container(
          width: screenWidth * 0.8,
          margin: EdgeInsets.only(right: 12),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            // color: Colors.black,
            color: DefaultColors.white,
            borderRadius: BorderRadius.circular(15),
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
                      Text(model['title']!, style: TextStyle(fontSize: 12.5)),
                    ],
                  ),
                  Text(model['type']!, style: TextStyle(fontSize: 12.5)),
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
                      fontSize: 16.0,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(36.02, screenHeight * 0.03),
                      backgroundColor: Theme.of(
                        context,
                      ).colorScheme.surfaceContainerLowest,
                      side: BorderSide(color: DefaultColors.blue4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
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
                        fontSize: 12.5,
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
