import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/biller_page.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/biller/data/models.dart';

class RechargeCard extends StatelessWidget {
  final RechargeCardModel model;

  const RechargeCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.8,
      margin: EdgeInsets.only(right: SizeConfig.screenWidth * 0.05),
      padding: EdgeInsets.all(SizeConfig.screenWidth * 0.028),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.04),
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
                    radius: SizeConfig.screenWidth * 0.025,
                    backgroundImage: AssetImage(model.imagePath),
                  ),
                  SizedBox(width: SizeConfig.screenHeight * 0.012),
                  Text(
                    model.title,
                    style: TextStyle(fontSize: SizeConfig.screenWidth * 0.035),
                  ),
                ],
              ),
              Text(
                model.type,
                style: TextStyle(fontSize: SizeConfig.screenWidth * 0.035),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.025),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                model.amount,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.screenWidth * 0.045,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                    SizeConfig.screenWidth * 0.12,
                    SizeConfig.screenHeight * 0.03,
                  ),
                  backgroundColor: Colors.white,
                  side: BorderSide(color: Color.fromARGB(255, 15, 121, 207)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      SizeConfig.screenWidth * 0.05,
                    ),
                  ),
                  // padding: EdgeInsets.symmetric(
                  //   horizontal: SizeConfig.screenWidth * 0.03,
                  //   vertical: SizeConfig.screenWidth * 0.02,
                  // ),
                ),
                child: Text(
                  DefaultStrings.instance.rechargeButtonText,
                  style: TextStyle(
                    color: Color.fromARGB(255, 15, 121, 207),
                    fontSize: SizeConfig.screenWidth * 0.035,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
