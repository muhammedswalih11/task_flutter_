import 'package:flutter/material.dart';

import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/card_spends_box.dart';

import '../../../../core/utils/colors.dart';

class CardSpendSection extends StatelessWidget {
  const CardSpendSection({super.key});

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
          // color: Colors.blueGrey.shade50,
          color: DefaultColors.dashboardGray,
          borderRadius: BorderRadius.circular(screenWidth * 0.045),
          border: Border.all(color: DefaultColors.grayMedBase, width: 0.6),
        ),
        padding: EdgeInsets.only(
          top: screenHeight * 0.04,
          right: screenWidth * 0.03,
          left: screenWidth * 0.03,
          bottom: screenHeight * 0.02,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: AlignmentGeometry.topCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth * 0.03),
                // color: Colors.black,
                color: DefaultColors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(screenWidth * 0.06),
                child: SizedBox(
                  height: screenHeight * 0.24,
                  child: CardSpendsBox(),
                ),
              ),
            ),
            Positioned(
              top: -screenWidth * 0.04,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.05),

                  color: DefaultColors.white,
                  border: Border.all(color: DefaultColors.grayMedBase),
                ),
                padding: EdgeInsets.all(screenWidth * 0.025),
                child: Text(
                  'Your recent spends',
                  style: TextStyle(
                    fontSize: screenWidth * 0.028,
                    fontWeight: FontWeight.bold,
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
