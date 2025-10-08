import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';

class DoneButton extends StatelessWidget {
  const DoneButton({super.key});

  @override
  Widget build(BuildContext context) {
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
          'Done',
          style: TextStyle(
            color: Colors.white,
            fontSize: SizeConfig.screenWidth * 0.03,
          ),
        ),
      ),
    );
  }
}
