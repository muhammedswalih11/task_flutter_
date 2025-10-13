import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/customized_ui.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';

class DoneButton extends StatelessWidget {
  const DoneButton({super.key});

  @override
  Widget build(BuildContext context) {
    final s = DefaultStrings.instance;
    return Padding(
      padding: EdgeInsets.only(
        right: SizeConfig.screenWidth * 0.03,
        left: SizeConfig.screenWidth * 0.03,
      ),
      child: MaterialButton(
        onPressed: () {},
        height: SizeConfig.screenHeight * 0.055,
        minWidth: SizeConfig.screenWidth,
        color: Color.fromARGB(255, 8, 73, 126),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.08),
        ),
        child: Text(
          s.doneButtontext,
          style: TextStyle(
            color: Colors.white,
            fontSize: SizeConfig.screenWidth * 0.03,
          ),
        ),
      ),
    );
  }
}
