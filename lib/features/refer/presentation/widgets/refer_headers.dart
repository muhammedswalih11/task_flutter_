import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/refer_page.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';

class ReferHeaders1 extends StatelessWidget {
  final s = DefaultStrings.instance;
  ReferHeaders1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: SizeConfig.screenWidth * 0.06,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        Text(
          s.referpageTitle,
          style: TextStyle(
            // color: const Color.fromARGB(255, 21, 77, 122),
            color: Theme.of(context).colorScheme.onSecondaryFixedVariant,
            fontWeight: FontWeight.bold,
            fontSize: SizeConfig.screenWidth * 0.045,
          ),
        ),
      ],
    );
  }
}
