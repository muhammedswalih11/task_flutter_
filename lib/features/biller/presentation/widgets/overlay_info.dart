import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';

Widget infoRow(String label, String value, BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: SizeConfig.screenWidth * 0.03,
      vertical: SizeConfig.screenHeight * 0.02,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: SizeConfig.screenWidth * 0.04,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: SizeConfig.screenWidth * 0.04,
            color: Theme.of(context).colorScheme.onPrimary,
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
    return const Divider(
      height: 1,
      color: const Color.fromARGB(255, 213, 238, 250),
    );
  }
}
