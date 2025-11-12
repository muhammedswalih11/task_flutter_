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
      padding: EdgeInsets.only(right: 18, left: 18),
      child: Container(
        decoration: BoxDecoration(
          color: DefaultColors.blue_0,

          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: DefaultColors.grayMedBase, width: 0.6),
        ),
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            const PointsEarnCard(),
            SizedBox(height: screenHeight * 0.02),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),

                color: DefaultColors.white,
              ),
              padding: EdgeInsets.all(10),
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
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
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
