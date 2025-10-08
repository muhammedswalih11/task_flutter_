import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/point_box.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/points_earncard.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/progress_bar.dart';

class ProgressBarSection extends StatelessWidget {
  const ProgressBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: SizeConfig.screenWidth * 0.04,
        left: SizeConfig.screenWidth * 0.04,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey.shade50,

          borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.035),
          border: Border.all(color: Colors.blueGrey.shade200, width: 0.6),
        ),
        padding: EdgeInsets.all(SizeConfig.screenWidth * 0.035),
        child: Column(
          children: [
            const PointsEarnCard(),
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  SizeConfig.screenWidth * 0.045,
                ),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(SizeConfig.screenWidth * 0.035),
              child: Column(
                children: [
                  Row(
                    children: [
                      const pointBox(),
                      SizedBox(width: SizeConfig.screenWidth * 0.025),
                      Expanded(
                        child: Text(
                          'claim upto 150 reward points\nafter reaching the\nnext transaction goal',
                          style: TextStyle(
                            fontSize: SizeConfig.screenWidth * 0.04,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
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
