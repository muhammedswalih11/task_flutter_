import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';

class DoneButton extends StatelessWidget {
  const DoneButton({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(right: 18, left: 18),
      child: MaterialButton(
        onPressed: () {},
        height: screenHeight * 0.055,
        minWidth: screenWidth,
        color: DefaultColors.dashboarddarkBlue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Text(
          'Done',
          style: TextStyle(color: DefaultColors.white, fontSize: 11.0),
        ),
      ),
    );
  }
}
