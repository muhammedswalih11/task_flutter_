import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/colors.dart';

import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/star_widget.dart';

class RewardBox extends StatelessWidget {
  final String type;
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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isWhiteBox = type == 'white';

    return Container(
      width: screenWidth * 0.5,
      height: screenHeight * 0.2,
      padding: EdgeInsets.all(screenWidth * 0.02),
      decoration: BoxDecoration(
        color: type == 'white' ? DefaultColors.gray0F : null,
        gradient: type == 'gradient'
            ? LinearGradient(
                // colors: [Colors.blue.shade700, Colors.blue.shade400],
                colors: [DefaultColors.blue, DefaultColors.blue_100],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : null,
        borderRadius: BorderRadius.circular(screenWidth * 0.03),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: type == 'white'
                      ? DefaultColors.black
                      : DefaultColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: isWhiteBox
                      ? screenWidth * 0.030
                      : screenWidth * 0.045,
                ),
              ),
              SizedBox(height: screenHeight * 0.015),
              if (isWhiteBox) ...[
                Container(
                  height: screenHeight * 0.02,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 195, 236, 248),
                    borderRadius: BorderRadius.circular(screenWidth * 0.025),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: FractionallySizedBox(
                      alignment: Alignment.centerLeft,
                      widthFactor: progressPercentage,
                      child: Container(
                        decoration: BoxDecoration(
                          color: DefaultColors.blue_200,
                          borderRadius: BorderRadius.circular(
                            screenWidth * 0.025,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: MaterialButton(
                    minWidth: (width * screenWidth / 360) - screenWidth * 0.08,
                    height: screenHeight * 0.038,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(screenWidth * 0.045),
                      side: const BorderSide(color: DefaultColors.blue),
                    ),
                    onPressed: onTap,
                    child: Text(
                      'Collect',
                      style: TextStyle(fontSize: screenWidth * 0.032),
                    ),
                  ),
                ),
              ] else ...[
                Expanded(child: Container()),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    child: Container(
                      height: screenHeight * 0.04,
                      width: screenWidth * 0.36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          screenWidth * 0.045,
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
          if (!isWhiteBox) ...[
            StarWidget(
              size: screenWidth * 0.045,
              right: screenWidth * 0.006,
              top: screenHeight * 0.002,
            ),
            StarWidget(
              size: screenWidth * 0.060,
              right: screenWidth * 0.068,
              top: screenHeight * 0.010,
            ),
            StarWidget(
              size: screenWidth * 0.090,
              right: screenWidth * 0.007,
              top: screenHeight * 0.030,
            ),
          ],
        ],
      ),
    );
  }
}
