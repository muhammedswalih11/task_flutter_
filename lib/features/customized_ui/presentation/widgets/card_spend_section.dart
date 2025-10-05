import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/card_spends_box.dart';

class CardSpendSection extends StatelessWidget {
  const CardSpendSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 226, 228, 230),
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.045),
      ),
      padding: EdgeInsets.only(
        top: SizeConfig.screenHeight * 0.04,
        right: SizeConfig.screenWidth * 0.03,
        left: SizeConfig.screenWidth * 0.03,
        bottom: SizeConfig.screenHeight * 0.02,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentGeometry.topCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                SizeConfig.screenWidth * 0.03,
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.screenWidth * 0.05),
              child: SizedBox(
                height: SizeConfig.screenHeight * 0.24,
                child: CardSpendsBox(),
              ),
            ),
          ),
          Positioned(
            top: -SizeConfig.screenWidth * 0.04,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  SizeConfig.screenWidth * 0.05,
                ),
                color: Colors.white,
                border: Border.all(
                  color: const Color.fromARGB(137, 61, 59, 59),
                ),
              ),
              padding: EdgeInsets.all(SizeConfig.screenWidth * 0.025),
              child: Text(
                'Your recent Spends',
                style: TextStyle(
                  fontSize: SizeConfig.screenWidth * 0.028,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
