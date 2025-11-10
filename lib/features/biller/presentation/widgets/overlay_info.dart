import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/colors.dart';

Widget infoRow(String label, String value, BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;

  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: screenWidth * 0.03,
      vertical: screenHeight * 0.02,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.04,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.04,
          ),
        ),
      ],
    ),
  );
}

class LightDivider extends StatelessWidget {
  const LightDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(height: 1, color: DefaultColors.blue_100);
  }
}
