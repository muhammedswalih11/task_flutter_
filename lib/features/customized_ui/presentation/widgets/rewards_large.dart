import 'package:flutter/material.dart';
import 'package:flutter_tasks_/features/customized_ui/domain/customized_ui_service.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/bonustext.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/point_box.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/points_earncard.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/progress_bar.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/reward_box.dart';

import '../../../../core/utils/colors.dart';

class RewardsLaregSection extends StatelessWidget {
  RewardsLaregSection({super.key});
  final service = CustomizedUiService();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    // final containerHeight = screenHeight * 0.18; // no longer used after refactor

    final rewardBoxes = service.getRewards();
    return SizedBox(
      width: double.infinity,
      child: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: screenWidth * 0.04,
                left: screenWidth * 0.04,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: DefaultColors.dashboardGray,
                  borderRadius: BorderRadius.circular(screenWidth * 0.04),
                  border: Border.all(
                    color: DefaultColors.grayMedBase,
                    width: 0.6,
                  ),
                ),
                padding: EdgeInsets.all(screenWidth * 0.045),
                child: Column(
                  children: [
                    PointsEarnCard(),
                    SizedBox(height: screenHeight * 0.012),
                    Container(
                      height: screenHeight * 0.40,
                      decoration: BoxDecoration(
                        color: DefaultColors.white,
                        borderRadius: BorderRadius.circular(screenWidth * 0.04),
                      ),
                      padding: EdgeInsets.all(screenWidth * 0.038),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              pointBox(
                                height: screenHeight * 0.08,
                                width: screenWidth * 0.16,
                                fontSize: screenWidth * 0.047,
                                iconSize: screenWidth * 0.06,
                                imageSize: screenWidth * 0.06,
                                showBorder: true,
                              ),
                              SizedBox(width: screenWidth * 0.033),
                              BonusText(),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.025),
                          ProgressBar(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.25,
              left: screenWidth * 0.10,
              bottom: screenHeight * 0.04,
              child: SizedBox(
                height: screenHeight * 0.2,
                width: screenWidth,
                child: Padding(
                  padding: EdgeInsets.all(screenWidth * 0.020),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: rewardBoxes.length,
                    itemBuilder: (context, index) {
                      final reward = rewardBoxes[index];
                      return Padding(
                        padding: EdgeInsets.only(right: screenWidth * 0.020),
                        child: RewardBox(
                          type: reward['type'],
                          title: reward['title'],
                          progressPercentage:
                              reward['progressPercentage'] ?? 0.0,
                          onTap: () {},
                          width: screenWidth * 0.40,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
