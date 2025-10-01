import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/customized_ui/datas/models.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/bonustext.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/point_box.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/points_earncard.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/progress_bar.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/reward_box.dart';

class RewardsLaregSection extends StatelessWidget {
  const RewardsLaregSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 226, 228, 230),
              borderRadius: BorderRadius.circular(
                SizeConfig.screenWidth * 0.04,
              ),
            ),
            padding: EdgeInsets.all(SizeConfig.screenWidth * 0.045),
            child: Column(
              children: [
                PointsEarnCard(),
                SizedBox(height: SizeConfig.screenHeight * 0.012),
                Container(
                  height: SizeConfig.screenHeight * 0.40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      SizeConfig.screenWidth * 0.04,
                    ),
                  ),
                  padding: EdgeInsets.all(SizeConfig.screenWidth * 0.038),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          pointBox(
                            height: SizeConfig.screenHeight * 0.08,
                            width: SizeConfig.screenWidth * 0.16,
                            fontSize: SizeConfig.screenWidth * 0.047,
                            iconSize: SizeConfig.screenWidth * 0.06,
                            imageSize: SizeConfig.screenWidth * 0.06,
                          ),
                          SizedBox(width: SizeConfig.screenWidth * 0.033),
                          BonusText(),
                        ],
                      ),
                      SizedBox(height: SizeConfig.screenHeight * 0.025),
                      ProgressBar(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Positioned(
              bottom: SizeConfig.screenHeight * 0.04,
              right: SizeConfig.screenWidth * 0.08,
              child: SizedBox(
                height: SizeConfig.screenHeight * 0.2,
                width: SizeConfig.screenWidth,

                child: PageView.builder(
                  controller: PageController(viewportFraction: 0.55),
                  itemCount: rewardBoxes.length,
                  itemBuilder: (context, index) {
                    final reward = rewardBoxes[index];
                    return Padding(
                      padding: EdgeInsets.only(
                        right: SizeConfig.screenWidth * 0.033,
                      ),
                      child: RewardBox(
                        type: reward.type,
                        title: reward.title,
                        onTap: () {},
                        width: SizeConfig.screenWidth * 0.40,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
