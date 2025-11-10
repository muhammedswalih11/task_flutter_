import 'package:flutter/material.dart';

import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/point_box.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/points_earncard.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/progress_bar.dart';

import '../../../../core/utils/colors.dart';

class ProgressBarSection extends StatelessWidget {
  const ProgressBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(
        right: screenWidth * 0.04,
        left: screenWidth * 0.04,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: DefaultColors.dashboardGray,

          borderRadius: BorderRadius.circular(screenWidth * 0.035),
          border: Border.all(color: DefaultColors.grayMedBase, width: 0.6),
        ),
        padding: EdgeInsets.all(screenWidth * 0.035),
        child: Column(
          children: [
            const PointsEarnCard(),
            SizedBox(height: screenHeight * 0.02),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth * 0.045),

                color: DefaultColors.white,
              ),
              padding: EdgeInsets.all(screenWidth * 0.035),
              child: Column(
                children: [
                  Row(
                    children: [
                      const pointBox(),
                      SizedBox(width: screenWidth * 0.025),
                      Expanded(
                        child: Text(
                          'Claim upto 150 reward points\nafter reaching the next\ntransaction goal',
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.04),
                  ProgressBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
