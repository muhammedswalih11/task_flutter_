import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/point_box.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/points_earncard.dart';

class ProgressBar extends StatelessWidget {
  ProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: SizeConfig.screenHeight * 0.013,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 195, 236, 248),
              borderRadius: BorderRadius.circular(
                SizeConfig.screenWidth * 0.028,
              ),
            ),
            child: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: FractionallySizedBox(
                alignment: AlignmentGeometry.centerLeft,
                widthFactor: 0.8,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 84, 170, 240),
                    borderRadius: BorderRadius.circular(
                      SizeConfig.screenWidth * 0.028,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: SizeConfig.screenWidth * 0.014),
        Text(
          'QAR 240 AWAY',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: SizeConfig.screenWidth * 0.037,
          ),
        ),
      ],
    );
  }
}
