import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/customized_ui.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';

class ProgressBar extends StatelessWidget {
  ProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    final s = DefaultStrings.instance;
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
                widthFactor: 0.75,
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
          s.rcProgressText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: SizeConfig.screenWidth * 0.037,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ],
    );
  }
}
