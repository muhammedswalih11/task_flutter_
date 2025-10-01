import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/customized_ui/datas/models.dart';

class RewardBox extends StatelessWidget {
  final RewardBoxType type;
  final String title;
  final double progressPercentage;
  final VoidCallback onTap;
  final double width;
  const RewardBox({
    super.key,
    required this.type,
    required this.title,
    required this.onTap,
    this.progressPercentage = 0.0,
    this.width = 180,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight * 0.2,
      padding: EdgeInsets.all(SizeConfig.screenWidth * 0.02),
      decoration: BoxDecoration(
        color: type == RewardBoxType.white
            ? const Color.fromARGB(255, 238, 242, 247)
            : null,
        gradient: type == RewardBoxType.gradient
            ? LinearGradient(
                colors: [Colors.blue.shade700, Colors.blue.shade400],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : null,
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.03),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: TextStyle(
              color: type == RewardBoxType.white ? Colors.black : Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: SizeConfig.screenWidth * 0.035,
            ),
          ),
          if (type == RewardBoxType.white) ...[
            Container(
              height: SizeConfig.screenHeight * 0.02,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 195, 236, 248),
                borderRadius: BorderRadius.circular(
                  SizeConfig.screenWidth * 0.025,
                ),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: 0.8,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 84, 170, 240),
                      borderRadius: BorderRadius.circular(
                        SizeConfig.screenWidth * 0.025,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.012),
            Align(
              alignment: Alignment.bottomCenter,
              child: MaterialButton(
                minWidth:
                    (width * SizeConfig.screenWidth / 360) -
                    SizeConfig.screenWidth * 0.08,
                height: SizeConfig.screenHeight * 0.04,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    SizeConfig.screenWidth * 0.045,
                  ),
                  side: const BorderSide(color: Colors.blue),
                ),
                onPressed: onTap,
                child: Text(
                  'Collect now',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: SizeConfig.screenWidth * 0.032,
                  ),
                ),
              ),
            ),
          ] else ...[
            SizedBox(height: SizeConfig.screenHeight * 0.015),
            InkWell(
              onTap: onTap,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: SizeConfig.screenHeight * 0.04,
                  width: SizeConfig.screenWidth * 0.36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      SizeConfig.screenWidth * 0.045,
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/collect.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
